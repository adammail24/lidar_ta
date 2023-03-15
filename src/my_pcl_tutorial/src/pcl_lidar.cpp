#include "pcl/registration/icp.h"
#include "boost/thread/mutex.hpp"
#include "pcl/io/pcd_io.h"
#include "pcl/point_types.h"
#include "ros/ros.h"
#include "pcl/conversions.h"
#include "sensor_msgs/PointCloud2.h"
#include "pcl_conversions/pcl_conversions.h"
#include "pcl_ros/point_cloud.h"
#include "sensor_msgs/LaserScan.h"
#include "laser_geometry/laser_geometry.h"
#include "sensor_msgs/LaserScan.h"
#include "nav_msgs/Odometry.h"
#include "tf2_ros/transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"
#include "tf2_ros/static_transform_broadcaster.h"

// initializating funtion
int icp_init();
int icp_routine();

void field_lines_init();
void field_points_init();
void measurements_init();

void update();

// timer
// ros::Timer tim_50hz;
// mutex
boost::mutex mutex_frame_display;


// sampling variabel
int var_sampling = 12;
int test=0;

// Variabel point cloud referensi and target
// pcl::PointCloud<pcl::PointXYZ> field_cloud;
pcl::PointCloud<pcl::PointXYZ>::Ptr field_cloud(new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud(new pcl::PointCloud<pcl::PointXYZ>);
sensor_msgs::PointCloud2 object_msg;
// object_msg.frame_id
// pcl::PointCloud::Ptr object_cloud;
// object_cloud.reset(new pcl::PointCloud);
// pcl::toROSMsg(*object_cloud.get(), object_msg); 

ros::Publisher pub_pcl, pub_pcl_lidar;
ros::Subscriber sub_lidar, sub_odom;
void callbacklidar(const sensor_msgs::LaserScan& msg_lidar);
void callbackOdometry(const nav_msgs::Odometry& msg_odom);
sensor_msgs::PointCloud2 laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan);
pcl::PointCloud<pcl::PointXYZ> pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2);
typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;

geometry_msgs::TransformStamped odom_trans;

void callbackOdometry(const nav_msgs::Odometry::ConstPtr& msg_odom)
{
    static tf2_ros::StaticTransformBroadcaster odom_broadcaster;
    // std::cout<<msg_odom<<std::endl;
    odom_trans.header.frame_id = "base_link";
    odom_trans.header.stamp = ros::Time::now();
    odom_trans.child_frame_id = "laser";

    odom_trans.transform.translation.x = msg_odom->pose.pose.position.x;
    odom_trans.transform.translation.y = msg_odom->pose.pose.position.y;
    odom_trans.transform.translation.z = msg_odom->pose.pose.position.z;

    tf2::Quaternion q;
    q.setRPY(0,0,msg_odom->pose.pose.orientation.z);
    odom_trans.transform.rotation.x = q.x();
    odom_trans.transform.rotation.y = q.y();
    odom_trans.transform.rotation.z = q.z();
    odom_trans.transform.rotation.w = q.w();


    // std::cout<<odom_trans<<std::endl;

    odom_broadcaster.sendTransform(odom_trans);
}

// Field and Detection Point
void field_points_init() // using for reference point cloud (0,0) until (12,0)
{
    // pcl::PCLPointCloud2 point_cloud2;
    // PointCloud::Ptr msg (new PointCloud);
    // msg->header.frame_id = "map";
    // msg->height = msg->width=1;
    // msg->points.push_back(pcl::PointXYZ(1.0,2.0,3.0));

    // for(float i=1; i<var_sampling; i+=0.5f)
    // {
    //     pcl::PointXYZ point;
    //     point.x = (float) i;
    //     point.y = 0;
    //     point.z = 0;
    //     field_cloud->points.push_back(point);
    //     pcl::toROSMsg(*field_cloud, object_msg);


    //     std::cout<< object_msg << std::endl;


        // point.x = 0;
        // point.y = i;
        // point.z = 0;
        // field_cloud.points.push_back(point);

        // point.x = 12 - i;
        // point.y = 12;
        // point.z = 0;
        // field_cloud.points.push_back(point);

        // point.x = 12;
        // point.y = 12 - i;
        // point.z = 0;
        // field_cloud.points.push_back(point);

        // std::cout<< i << std::endl;

    // }

    // pcl::fromPCLPointCloud2(point_cloud2,field_cloud);

}

void callbacklidar(const sensor_msgs::LaserScan& msg_lidar)
{
    sensor_msgs::PointCloud2 data_local_pointcloud2;
    pcl::PointCloud<pcl::PointXYZ> data_local_pointcloudpcl;

    data_local_pointcloud2 = laserscan2pointcloud2(msg_lidar);

    data_local_pointcloudpcl = pointcloudtwo2pcl(data_local_pointcloud2);

    // Ubah Disini untuk parameter detection cloud
    // detection_cloud = data_local_pointcloudpcl;
    for(int i = 0; i< data_local_pointcloudpcl.size(); i++)
    {
        pcl::PointXYZ input_point;
        input_point.x = data_local_pointcloudpcl[i].x;
        input_point.y = data_local_pointcloudpcl[i].y;
        input_point.z = 0;
        detection_cloud->header.frame_id = "laser";
        detection_cloud->points.push_back(input_point);
        std::cout<<*detection_cloud<<std::endl;
    }

    // std::    <<detection_cloud<<std::endl;
    // std::cout<<data_local_pointcloudpcl<<std::endl;

}

sensor_msgs::PointCloud2 laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan)
{
    static laser_geometry::LaserProjection projector;
    sensor_msgs::PointCloud2 pc2_dst;
    projector.projectLaser(laser_lidar_laserscan, pc2_dst, -1, laser_geometry::channel_option::Intensity | laser_geometry::channel_option::Distance);
    pc2_dst.header.frame_id = "laser";

    return pc2_dst;
}

pcl::PointCloud<pcl::PointXYZ> pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2)
{
    pcl::PointCloud<pcl::PointXYZ> cloud_dst;
    pcl::fromROSMsg(laser_lidar_pointcloud2, cloud_dst);
    return cloud_dst;
}



int main(int argc, char **argv) // Program Main
{
    ros::init(argc, argv, "icp_lidar");

    ros::NodeHandle nh;
    ros::Rate rate(4);
    pub_pcl = nh.advertise<PointCloud>("pub_pcl_pcl", 1);
    pub_pcl_lidar = nh.advertise<PointCloud>("pub_pcl_lidar", 1);
    sub_lidar = nh.subscribe("scan", 20, callbacklidar);
    sub_odom = nh.subscribe("odom", 10, &callbackOdometry);



    pcl::PointXYZ point;

    for(float i=0;i<=var_sampling;i+=0.1)
    {
        point.x = i;
        point.y = 0;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 0;
        point.y = i;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 12;
        point.y = 12 - i;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 12 - i;
        point.y = 12;
        point.z = 0;
        field_cloud->points.push_back(point);
    }


    field_cloud->header.frame_id = "base_link";
    // msg->height = msg->width=1;

    while(ros::ok())
    {
        pcl_conversions::toPCL(ros::Time::now(), field_cloud->header.stamp);
        pcl_conversions::toPCL(ros::Time::now(), detection_cloud->header.stamp);

        pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
        icp.setInputSource(detection_cloud);
        icp.setInputTarget(field_cloud);
        icp.setMaximumIterations(100);

        pcl::PointCloud<pcl::PointXYZ> Final;
        icp.align(Final);

        std::cout << "has converged:" << icp.hasConverged() << " score: " << icp.getFitnessScore() << std::endl;
        std::cout << icp.getFinalTransformation() << std::endl;

        // // Transform single point
        // Eigen::Vector4f point(robot_estimated_x, robot_estimated_y, 0, 1);
        // Eigen::Vector4f transformed_point = icp.getFinalTransformation() * point;

        // // Print results
        // std::cout << "Transformed point:" << std::endl;
        // std::cout << transformed_point << std::endl;

        pub_pcl.publish(*field_cloud);
        pub_pcl_lidar.publish(*detection_cloud);
        ros::spinOnce();
        rate.sleep();
    }
}