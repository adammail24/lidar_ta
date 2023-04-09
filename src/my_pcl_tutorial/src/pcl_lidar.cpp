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
#include "std_msgs/Float32MultiArray.h"
#include "geometry_msgs/Pose2D.h"
// #include "ros_er/sensors.h"

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

#define start_point 260
#define end_point 820

// sampling variabel
float var_sampling_1 = 12;
float var_sampling_2 = 6.8;
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

ros::Publisher pub_pcl, pub_pcl_lidar, pub_transform_point;
ros::Subscriber sub_lidar, sub_odom;
void callbacklidar(const sensor_msgs::LaserScan& msg_lidar);
void callbackOdometry(const nav_msgs::Odometry& msg_odom);
// void callbackOdometryReal(const ros_er::sensors& msg_odom);
void callbackOdometryRealRR(const std_msgs::Float32MultiArray& msg_odom);
sensor_msgs::PointCloud2 laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan);
pcl::PointCloud<pcl::PointXYZ> pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2);
typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;

float robot_estimated_x = 0;
float robot_estimated_y = 0;
float robot_estimated_theta = 0;



geometry_msgs::TransformStamped odom_trans;

// void callbackOdometryReal(const ros_er::sensors& msg_odom)
// {

//     robot_estimated_x = msg_odom.global_pos_x*-0.001 + 11;
//     robot_estimated_y = msg_odom.global_pos_y*-0.001 + 0.4;
//     robot_estimated_theta = msg_odom.gyro * (M_PI/180);

//     static tf2_ros::TransformBroadcaster odom_broadcaster;
//     float z; // Change to radian
//     // std::cout<<" odom = " << msg_odom<<std::endl;
//     odom_trans.header.frame_id = "base_link";
//     odom_trans.header.stamp = ros::Time::now();
//     odom_trans.child_frame_id = "laser";

//     odom_trans.transform.translation.x = msg_odom.global_pos_x*-0.001 + 11;
//     odom_trans.transform.translation.y = msg_odom.global_pos_y*-0.001 + 0.4;
//     odom_trans.transform.translation.z = 0;
//     tf2::Quaternion q;
//     z = msg_odom.gyro * (M_PI/180) - (M_PI/2);
//     q.setRPY(0,0,z);
//     odom_trans.transform.rotation.x = q.x();
//     odom_trans.transform.rotation.y = q.y();
//     odom_trans.transform.rotation.z = q.z();
//     odom_trans.transform.rotation.w = q.w();


//     // std::cout<<odom_trans<<std::endl;    

//     odom_broadcaster.sendTransform(odom_trans);
// }

void callbackOdometryRealRR(const std_msgs::Float32MultiArray& msg_odom)
{

    robot_estimated_x = msg_odom.data[1] * 0.001 + 6;
    robot_estimated_y = msg_odom.data[2] * 0.001 + 0.9;
    robot_estimated_theta = msg_odom.data[3] * -(M_PI/180);

    static tf2_ros::TransformBroadcaster odom_broadcaster;
    float z; // Change to radian
    // std::cout<<" odom = " << msg_odom<<std::endl;
    odom_trans.header.frame_id = "base_link";
    odom_trans.header.stamp = ros::Time::now();
    odom_trans.child_frame_id = "laser";

    odom_trans.transform.translation.x = msg_odom.data[1] * 0.001 + 6; //msg_odom.data[1];
    odom_trans.transform.translation.y = msg_odom.data[2] * 0.001 + 0.9; //msg_odom.data[2];
    odom_trans.transform.translation.z = 0;
    tf2::Quaternion q;
    z = msg_odom.data[3] * -(M_PI/180);
    q.setRPY(0,0,z);
    odom_trans.transform.rotation.x = q.x();
    odom_trans.transform.rotation.y = q.y();
    odom_trans.transform.rotation.z = q.z();
    odom_trans.transform.rotation.w = q.w();


    // std::cout<<odom_trans<<std::endl;    

    odom_broadcaster.sendTransform(odom_trans);
}

// void callbackOdometry(const nav_msgs::Odometry::ConstPtr& msg_odom)
// {
//     static tf2_ros::TransformBroadcaster odom_broadcaster;
//     // std::cout<<msg_odom<<std::endl;
//     odom_trans.header.frame_id = "base_link";
//     odom_trans.header.stamp = ros::Time::now();
//     odom_trans.child_frame_id = "laser";

//     odom_trans.transform.translation.x = msg_odom->pose.pose.position.x;
//     odom_trans.transform.translation.y = msg_odom->pose.pose.position.y;
//     odom_trans.transform.translation.z = msg_odom->pose.pose.position.z;

//     tf2::Quaternion q;
//     q.setRPY(0,0,msg_odom->pose.pose.orientation.z);
//     odom_trans.transform.rotation.x = q.x();
//     odom_trans.transform.rotation.y = q.y();
//     odom_trans.transform.rotation.z = q.z();
//     odom_trans.transform.rotation.w = q.w();


//     // std::cout<<odom_trans<<std::endl;

//     odom_broadcaster.sendTransform(odom_trans);
// }

// Field and Detection Point
void callbacklidar(const sensor_msgs::LaserScan& msg_lidar)
{
    sensor_msgs::PointCloud2 data_local_pointcloud2;
    pcl::PointCloud<pcl::PointXYZ> data_local_pointcloudpcl;

    data_local_pointcloud2 = laserscan2pointcloud2(msg_lidar);

    data_local_pointcloudpcl = pointcloudtwo2pcl(data_local_pointcloud2);

    // Ubah Disini untuk parameter detection cloud
    // detection_cloud = data_local_pointcloudpcl;
    detection_cloud->points.clear();
    for(int i = 0; i< data_local_pointcloudpcl.size(); i++)
    {
        pcl::PointXYZ input_point;
        input_point.x = data_local_pointcloudpcl[i].x;
        input_point.y = data_local_pointcloudpcl[i].y;
        input_point.z = 0;
        detection_cloud->header.frame_id = "laser";
        detection_cloud->points.push_back(input_point);
        // std::cout<<*detection_cloud<<std::endl;
    }

    // std::    <<detection_cloud<<std::endl;
    // std::cout<<data_local_pointcloudpcl<<std::endl;

}

void callbacklidarRR(const sensor_msgs::LaserScan::ConstPtr& msg_lidar)
{
    // sensor_msgs::PointCloud2 data_local_pointcloud2;
    // pcl::PointCloud<pcl::PointXYZ> data_local_pointcloudpcl;

    // data_local_pointcloud2 = laserscan2pointcloud2(msg_lidar);

    // data_local_pointcloudpcl = pointcloudtwo2pcl(data_local_pointcloud2);




    // Ubah Disini untuk parameter detection cloud
    // detection_cloud = data_local_pointcloudpcl;
    detection_cloud->points.clear();
    for(int i = start_point; i< end_point; i++)
    {
        float deg = (900 - i) * 0.004363323f;
        // if(isnan(msg_lidar->ranges[i])) continue;
        if(msg_lidar->ranges[i] > 3.0 || msg_lidar->ranges[i] < 0.004) continue;

        pcl::PointXYZ input_point;
        input_point.x = msg_lidar->ranges[i]* -cosf(deg);
        input_point.y = msg_lidar->ranges[i]* sinf(deg);
        input_point.z = 0;
        detection_cloud->header.frame_id = "laser";
        detection_cloud->points.push_back(input_point);
        // std::cout<<*detection_cloud<<std::endl;
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
    ros::Rate rate(100);
    pub_transform_point = nh.advertise<geometry_msgs::Pose2D>("pub_tf_point", 10);
    pub_pcl = nh.advertise<PointCloud>("pub_pcl_pcl", 10);
    pub_pcl_lidar = nh.advertise<PointCloud>("pub_pcl_lidar", 10);
    sub_lidar = nh.subscribe("scan", 20, &callbacklidarRR);
    // sub_odom = nh.subscribe("/sensor", 10, &callbackOdometryReal);
    sub_odom = nh.subscribe("sensor", 10, &callbackOdometryRealRR);



    pcl::PointXYZ point;
    field_cloud->points.clear();
    for(float i=0;i<=var_sampling_1;i+=0.1)
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

    for(float i=0;i<=var_sampling_2;i+=0.1)
    {
        point.x = i + 2.575;
        point.y = 2.575;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 2.575;
        point.y = i + 2.575;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 6.8 + 2.575;
        point.y = 6.8 - i + 2.575;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 6.8 - i + 2.575;
        point.y = 6.8 + 2.575;
        point.z = 0;
        field_cloud->points.push_back(point);
    }


    field_cloud->header.frame_id = "base_link";
    // msg->height = msg->width=1;

    while(ros::ok())
    {
        // ROS_INFO("Debug");
        pcl_conversions::toPCL(ros::Time::now(), field_cloud->header.stamp);
        pcl_conversions::toPCL(ros::Time::now(), detection_cloud->header.stamp);

        pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
        icp.setInputSource(detection_cloud);
        icp.setInputTarget(field_cloud);
        icp.setMaximumIterations(100); // so far this iterations can implement to robot and give the best estimate position (iteration = 1)

        pcl::PointCloud<pcl::PointXYZ> Final;
        icp.align(Final);

        std::cout << "has converged:" << icp.hasConverged() << " score: " << icp.getFitnessScore() << std::endl;
        std::cout << icp.getFinalTransformation() << std::endl;

        // // Transform single point
        Eigen::Vector4f point(robot_estimated_x, robot_estimated_y, 0, robot_estimated_theta);
        Eigen::Vector4f transformed_point = icp.getFinalTransformation() * point;

        // // Print results
        std::cout << "Transformed point:" << std::endl;
        std::cout << transformed_point[1] << std::endl;

        geometry_msgs::Pose2D transform_point;
        transform_point.x = transformed_point[0];
        transform_point.y = transformed_point[1];
        transform_point.theta = transformed_point[3];


        pub_transform_point.publish(transform_point);
        pub_pcl.publish(*field_cloud);
        pub_pcl_lidar.publish(*detection_cloud);
        ros::spinOnce();
        rate.sleep();
    }
}