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

// initializating funtion
int icp_init();
int icp_routine();

void field_lines_init();
void field_points_init();
void measurements_init();

void update();


boost::mutex mutex_frame_display;

#define start_point 260
#define end_point 820

#define DEG_TO_RAD 0.0174533


// sampling variabel
float var_sampling_1 = 12;
float var_sampling_2 = 3;
int test=0;

typedef struct{
    float x1;
    float y1;

    float x2;
    float y2;
} line_t;

// Variabel point cloud referensi and target
pcl::PointCloud<pcl::PointXYZ>::Ptr field_cloud(new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud(new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr transform_point_lidar(new pcl::PointCloud<pcl::PointXYZ>);

sensor_msgs::PointCloud2 object_msg;
sensor_msgs::PointCloud lidar;



ros::Publisher pub_pcl, pub_pcl_lidar, pub_transform_point, pub_transform_lidar;
ros::Subscriber sub_lidar, sub_odom;
void callbacklidar(const sensor_msgs::LaserScan& msg_lidar);
void callbackOdometry(const nav_msgs::Odometry& msg_odom);
void remove_points(sensor_msgs::PointCloud* cloud, bool a, line_t line);
void callbackOdometryRealRR(const std_msgs::Float32MultiArray& msg_odom);
void transform_cloud(sensor_msgs::PointCloud* cloud, float trans_x, float trans_y, float rot_z_deg);
sensor_msgs::PointCloud2 laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan);
pcl::PointCloud<pcl::PointXYZ> pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2);
typedef pcl::PointCloud<pcl::PointXYZ> PointCloud;

float robot_estimated_x = 0;
float robot_estimated_y = 0;
float robot_estimated_theta = 0;

geometry_msgs::TransformStamped odom_trans;

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

void remove_points(sensor_msgs::PointCloud* cloud, bool a, line_t line)
{
    sensor_msgs::PointCloud buf;

    for(int i = 0; i < cloud->points.size(); i++){
        float x = cloud->points[i].x;
        float y = cloud->points[i].y;
        float d = (x-line.x1)*(line.y2-line.y1)-(y-line.y1)*(line.x2-line.x1);

        if(a && d >= 0)buf.points.push_back(cloud->points[i]);
        if(!a && d < 0)buf.points.push_back(cloud->points[i]);
    }

    cloud->points.assign(buf.points.begin(), buf.points.end());
}


void transform_cloud(sensor_msgs::PointCloud* cloud, float trans_x, float trans_y, float rot_z_deg)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr source_cloud (new pcl::PointCloud<pcl::PointXYZ> ());
    for(int i = 0; i < cloud->points.size(); i++){
        pcl::PointXYZ point;
        point.x = cloud->points[i].x;
        point.y = cloud->points[i].y;
        point.z = 0;
        source_cloud->points.push_back(point);
    }

    Eigen::Matrix4f transform = Eigen::Matrix4f::Identity();
    transform(0,3) = trans_x;
    transform(1,3) = trans_y;
    transform(2,3) = 0;

    float theta = rot_z_deg * DEG_TO_RAD; // The angle of rotation in radians
    transform (0,0) = std::cos (theta);
    transform (0,1) = -sin(theta);  
    transform (1,0) = sin (theta);
    transform (1,1) = std::cos (theta);

    pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud (new pcl::PointCloud<pcl::PointXYZ> ());
    pcl::transformPointCloud (*source_cloud, *transformed_cloud, transform);

    cloud->points.clear();
    for(int i = 0; i < transformed_cloud->points.size(); i++){
        geometry_msgs::Point32 pt;
        pt.x = transformed_cloud->points[i].x;
        pt.y = transformed_cloud->points[i].y;
        pt.z = transformed_cloud->points[i].z;
        cloud->points.push_back(pt);
    } 
} 

void callbacklidarRR(const sensor_msgs::LaserScan::ConstPtr& msg_lidar)
{
    // Ubah Disini untuk parameter detection cloud
    // detection_cloud = data_local_pointcloudpcl;
    detection_cloud->points.clear();
    lidar.points.clear();
    for(int i = start_point; i< end_point; i++)
    {
        float deg = (900 - i) * 0.004363323f;
        // if(isnan(msg_lidar->ranges[i])) continue;
        if(msg_lidar->ranges[i] > 6.4 || msg_lidar->ranges[i] < 0.004) continue;

        pcl::PointXYZ input_point;
        geometry_msgs::Point32 pt;
        pt.x = msg_lidar->ranges[i] * -cosf(deg);
        pt.y = msg_lidar->ranges[i] * sinf(deg);
        pt.z = 0;
        lidar.points.push_back(pt);

        // input_point.x = msg_lidar->ranges[i]* -cosf(deg);
        // input_point.y = msg_lidar->ranges[i]* sinf(deg);
        // input_point.z = 0;
        // detection_cloud->header.frame_id = "laser";
        // detection_cloud->points.push_back(input_point);
        // std::cout<<*detection_cloud<<std::endl;
    }

    transform_cloud(&lidar, robot_estimated_x, robot_estimated_y, robot_estimated_theta * 57.296);

    // remove y > 5
    line_t line;
    line.x1 = -10;
    line.y1 = 4.5;

    line.x2 = 10;
    line.y2 = 4.5;
    remove_points(&lidar, 1, line);

    //remove y < 1
    line.x1 = -10;
    line.y1 = 1;

    line.x2 = 10;
    line.y2 = 1;
    remove_points(&lidar, 0, line);

    //remove x < -4
    line.x1 = -4;
    line.y1 = -2;

    line.x2 = -4;
    line.y2 = 8;
    remove_points(&lidar, 1, line);

    //remove x > 3
    line.x1 = 3;
    line.y1 = -2;

    line.x2 = 3;
    line.y2 = 8;
    remove_points(&lidar, 0, line);

    for(int i = 0; i< lidar.points.size(); i++)
    {
        pcl::PointXYZ point;
        point.x = lidar.points[i].x;
        point.y = lidar.points[i].y;
        point.z = lidar.points[i].z;
        detection_cloud->header.frame_id = "laser";
        detection_cloud->points.push_back(point);
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

void draw_circle(float center_x, float center_y, float radius, int num_points)
{
    pcl::PointXYZ point;
    for(int i=0; i < num_points+1; i++)
    {
        float deg = ((float) i/num_points) * 2.0f * M_PI;
        point.x = center_x + radius * cosf(deg);
        point.y = center_y + radius * sinf(deg);
        point.z = 0;

        field_cloud-> points.push_back(point);
    }
}



int main(int argc, char **argv) // Program Main
{
    ros::init(argc, argv, "icp_lidar");

    ros::NodeHandle nh;
    ros::Rate rate(100);
    pub_transform_point = nh.advertise<geometry_msgs::Pose2D>("pub_tf_point", 10);
    pub_pcl = nh.advertise<PointCloud>("pub_pcl_pcl", 10);
    pub_pcl_lidar = nh.advertise<PointCloud>("pub_pcl_lidar", 10);
    pub_transform_lidar = nh.advertise<PointCloud>("pub_trans_lidar", 10);
    sub_lidar = nh.subscribe("scan", 20, &callbacklidarRR);
    // sub_odom = nh.subscribe("/sensor", 10, &callbackOdometryReal);
    sub_odom = nh.subscribe("sensor", 10, &callbackOdometryRealRR);



    pcl::PointXYZ point;
    field_cloud->points.clear();
    // draw_circle(2.75, 2.75, 0.05, 25);
    // draw_circle(6, 2.75, 0.05, 25);
    // draw_circle(9.25, 2.75, 0.05, 25);
    
    // for(float i=0;i<=var_sampling_1;i+=0.1)
    // {
    //     point.x = i;
    //     point.y = 0;
    //     point.z = 0;
    //     field_cloud->points.push_back(point);

    //     point.x = 0;
    //     point.y = i;
    //     point.z = 0;
    //     field_cloud->points.push_back(point);

    //     point.x = 12;
    //     point.y = 12 - i;
    //     point.z = 0;
    //     field_cloud->points.push_back(point);

    //     point.x = 12 - i;
    //     point.y = 12;
    //     point.z = 0;
    //     field_cloud->points.push_back(point);
    // }

    for(float i=0;i<=var_sampling_2;i+=0.1)
    {
        point.x = i + 4.475;
        point.y = 4.475;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 4.475;
        point.y = i + 4.475;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 3 + 4.475;
        point.y = 3 - i + 4.475;
        point.z = 0;
        field_cloud->points.push_back(point);

        point.x = 3 - i + 4.475;
        point.y = 3 + 4.475;
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

        Eigen::Matrix4f mat_transformation = Eigen::Matrix4f::Identity();
        Eigen::Matrix4f transf = icp.getFinalTransformation();
    // total_trans_x =  transf(0,3);
    // total_trans_y =  transf(1,3);
    // total_trans_z = (-1.0f * transf(0,1)) * 57.295754958;

        mat_transformation(0,3) = transf(0,3);
        mat_transformation(1,3) = transf(1,3);
        mat_transformation(2,3) = 0;

        float theta = -1.0f * transf(1,0);
        mat_transformation(0,0) = std::cos(theta);
        mat_transformation(0,1) = -sin(theta);
        mat_transformation(1,0) = sin(theta);
        mat_transformation(1,1) = std::cos(theta);

        pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud (new pcl::PointCloud<pcl::PointXYZ>);
        pcl::transformPointCloud(*detection_cloud, *transformed_cloud, mat_transformation);
        transformed_cloud->header.frame_id = "laser";
        pub_transform_lidar.publish(*transformed_cloud);
        
        // // Transform single point
        Eigen::Vector4f point(robot_estimated_x, robot_estimated_y, 0, robot_estimated_theta);
        Eigen::Vector4f transformed_point = icp.getFinalTransformation() * point;

        // // Print results
        std::cout << "Transformed point:" << std::endl;
        std::cout << transformed_point << std::endl;

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
