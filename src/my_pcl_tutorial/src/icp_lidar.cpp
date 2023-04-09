#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "std_msgs/Float32MultiArray.h"
#include "geometry_msgs/Pose2D.h"

#include "pcl/registration/icp.h"
#include "pcl/point_types.h"
#include "pcl/io/pcd_io.h"

#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>

#define DEG_TO_RAD 0.0174533
#define RAD_TO_DEG 57.2957795131

#define start_point 260
#define end_point 820

typedef struct{
    float x1;
    float y1;

    float x2;
    float y2;
} line_t;

pcl::PointCloud<pcl::PointXYZ>::Ptr field_cloud (new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud (new pcl::PointCloud<pcl::PointXYZ>);

sensor_msgs::LaserScan scan;
sensor_msgs::PointCloud map;
sensor_msgs::PointCloud lidar;
sensor_msgs::PointCloud transformed_lidar;

ros::Publisher pub_cloud;
ros::Publisher pub_lidar;
ros::Publisher pub_tfd_lidar;
ros::Publisher pub_closest_point;

// Function
void callback_lidar(const sensor_msgs::LaserScan::ConstPtr& msg_lidar);
void transform_cloud(sensor_msgs::PointCloud* cloud, float trans_x, float trans_y, float rot_z_deg);
void callback_odom(const std_msgs::Float32MultiArray::ConstPtr& msg);
void remove_points(sensor_msgs::PointCloud* cloud, bool a, line_t line);
void draw_cirle(sensor_msgs::PointCloud* map, float center_x, float center_y, float radius, int num_of_points);
void draw_line(sensor_msgs::PointCloud* map, float start_x, float start_y, float end_x, float end_y, int num_of_points);
void draw_map();

// Variable Global
geometry_msgs::Pose2D pose_robot_global;
float total_trans_x = 0;
float total_trans_y = 0;
float total_trans_z = 0;

float total_trans_x_s = 0;
float total_trans_y_s = 0;
float total_trans_z_s = 0;
float prev_trans_x = 0;
float prev_trans_y = 0;
float prev_trans_z = 0;


void callback_lidar(const sensor_msgs::LaserScan::ConstPtr& msg_lidar)
{
    // std::cout<<"test"<<std::endl;
 
     //save map
    if(field_cloud->points.empty()){
        for (int i = 0; i < map.points.size(); i++) {
            float deg = (900 - i) * 0.004363323f;

            // if(msg->ranges[i] > 2) continue;
            pcl::PointXYZ point;
            // point.x = msg->ranges[i] * cosf(deg);
            // point.y = msg->ranges[i] * sinf(deg);
            point.x = map.points[i].x;
            point.y = map.points[i].y;
            point.z = 0;
            field_cloud->points.push_back(point);
        }

        return;
    }

    detection_cloud->points.clear();
    lidar.points.clear();
    for(int i = start_point; i < end_point; i++)
    {
        float deg = (900 - i) * 0.004363323f;
        if(msg_lidar->ranges[i] > 6.4 || msg_lidar->ranges[i]< 0.004) continue;

        geometry_msgs::Point32 pt;

        pt.x = msg_lidar->ranges[i] * -cosf(deg);
        pt.y = msg_lidar->ranges[i] * sinf(deg);
        pt.z = 0;
        lidar.points.push_back(pt);
    }
    transform_cloud(&lidar, pose_robot_global.x * 0.001, pose_robot_global.y * 0.001, pose_robot_global.theta);

    // Limit for point cloud according their position
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

    for(int i = 0; i < lidar.points.size(); i++)
    {
        pcl::PointXYZ point;
        point.x = lidar.points[i].x;
        point.y = lidar.points[i].y;
        point.z = lidar.points[i].z;
        detection_cloud->points.push_back(point);
    }

    pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
    icp.setInputSource(detection_cloud);
    icp.setInputTarget(field_cloud);
    icp.setMaximumIterations(100);
    // icp.setMaxCorrespondenceDistance(0.5);

    pcl::PointCloud<pcl::PointXYZ> Final;
    icp.align(Final);

    if(icp.hasConverged() != 1) return;

    Eigen::Matrix4f transf = icp.getFinalTransformation();

    total_trans_x = transf(0,3);
    total_trans_y = transf(1,3);
    total_trans_z = (-1.0f * transf(0,1)) * 57.295754958;

    total_trans_x_s = total_trans_x * 0.05 + total_trans_x_s * 0.95;
    total_trans_y_s = total_trans_y * 0.05 + total_trans_y_s * 0.95;
    total_trans_z_s = total_trans_z * 0.05 + total_trans_z_s * 0.95;    

    // printf("data at 180: %.4f\n", msg->ranges[180]);
    printf("total x %s%.4f  %s%.4f\n", total_trans_x < 0 ? "" : " ",total_trans_x, total_trans_x_s < 0 ? "" : " ", total_trans_x_s);
    printf("total y %s%.4f  %s%.4f\n", total_trans_y < 0 ? "" : " ",total_trans_y, total_trans_y_s < 0 ? "" : " ", total_trans_y_s);
    printf("total z %s%.4f  %s%.4f\n\n", total_trans_z < 0 ? "" : " ", total_trans_z, total_trans_z_s < 0 ? "" : " ", total_trans_z_s);
    fflush(stdout);

    lidar.header.frame_id = "laser";
    lidar.header.stamp = ros::Time::now();

    pub_lidar.publish(lidar);

    transformed_lidar.points.assign(lidar.points.begin(), lidar.points.end());
    transform_cloud(&transformed_lidar, total_trans_x, total_trans_y, total_trans_z);

    transformed_lidar.header.frame_id = "laser";
    transformed_lidar.header.stamp = ros::Time::now();
    pub_tfd_lidar.publish(transformed_lidar);
}

void transform_cloud(sensor_msgs::PointCloud* cloud, float trans_x, float trans_y, float rot_z)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr source_cloud (new pcl::PointCloud<pcl::PointXYZ>());
    for(int i = 0; i < cloud->points.size(); i++)
    {
        pcl::PointXYZ point;
        point.x = cloud->points[i].x;
        point.y = cloud->points[i].y;
        point.z = 0;
        source_cloud->points.push_back(point);
    }

    Eigen::Matrix4f transf_matrix = Eigen::Matrix4f::Identity();
    transf_matrix(0,3) = trans_x;
    transf_matrix(1,3) = trans_y;
    transf_matrix(2,3) = 0;

    float theta = rot_z * DEG_TO_RAD;
    transf_matrix(0,0) = std::cos(theta);
    transf_matrix(0,1) = -sin(theta);
    transf_matrix(1,0) = sin(theta);
    transf_matrix(1,1) = std::cos(theta);

    pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_point_cloud (new pcl::PointCloud<pcl::PointXYZ> ());
    pcl::transformPointCloud(*source_cloud, *transformed_point_cloud, transf_matrix);

    cloud->points.clear();
    for(int i = 0; i < transformed_point_cloud->points.size(); i++)
    {
        geometry_msgs::Point32 pt;
        pt.x = transformed_point_cloud->points[i].x;
        pt.y = transformed_point_cloud->points[i].y;
        pt.z = transformed_point_cloud->points[i].z;
        cloud->points.push_back(pt);
    }
}

void callback_odom(const std_msgs::Float32MultiArray::ConstPtr& msg)
{
    if(msg->data[0] == 200)
    {
        pose_robot_global.x = msg->data[1];
        pose_robot_global.y = msg->data[2];
        pose_robot_global.theta = -msg->data[3];
    }
}

void remove_points(sensor_msgs::PointCloud* cloud, bool a, line_t line)
{
    sensor_msgs::PointCloud buf;

    for(int i = 0; i < cloud->points.size(); i++)
    {
        float x = cloud->points[i].x;
        float y = cloud->points[i].y;
        float d = (x-line.x1)*(line.y2-line.y1) - (y-line.y1)*(line.x2-line.x1);

        if(a && d>=0) buf.points.push_back(cloud->points[i]);
        if(!a && d<0) buf.points.push_back(cloud->points[i]);
    }

    cloud->points.assign(buf.points.begin(), buf.points.end());
}

void draw_cirle(sensor_msgs::PointCloud* map, float center_x, float center_y, float radius, int num_of_points)
{
    geometry_msgs::Point32 point;
    for(int i = 0; i < num_of_points + 1; i++){
        float deg = ((float)i/num_of_points) * 2.0f * M_PI;

        point.x = center_x + radius * cosf(deg);
        point.y = center_y + radius * sinf(deg);
        point.z = 0;

        // std::cout << point << std::endl;

        map->points.push_back(point);
    }
}

void draw_line(sensor_msgs::PointCloud* map, float start_x, float start_y, float end_x, float end_y, int num_of_points)
{
    geometry_msgs::Point32 point;

    for(int i = 0; i < num_of_points + 1; i++){
        point.x = start_x + (end_x - start_x) * i / num_of_points;
        point.y = start_y + (end_y - start_y) * i / num_of_points;
        point.z = 0;

        // std::cout << point << std::endl;

        map->points.push_back(point);
    }
}

void draw_map()
{
    map.header.frame_id = "laser";
    map.header.stamp = ros::Time::now();

    // //pole type 1 own
    // draw_cirle(&map, 2.75, 2.75, 0.05, 25);
    // draw_cirle(&map, 6, 2.75, 0.05, 25);
    // draw_cirle(&map, 9.75, 2.75, 0.05, 25);

    //floor 3
    // draw_line(&map,  4.475, 4.475,  7.475, 4.475, 100);
    // draw_line(&map,  7.475, 4.475,  7.475, 7.475, 100);
    draw_cirle(&map, -3.62478, 1.78734, 0.05, 25);
    draw_cirle(&map, -0.42226, 1.78734, 0.05, 25);
    draw_cirle(&map,  2.78211, 1.78734, 0.05, 25);
    draw_line(&map, -1.91984, 3.49215,  1.07689, 3.49215, 100);
    draw_line(&map,  1.07689, 3.49215,  1.07689, 6.49005, 100);

    pub_cloud.publish(map);
}



int main(int argc, char **argv)
{
    ros::init(argc, argv, "icp_lidar_node");
    ros::NodeHandle nh;
    ros::Rate rate(100);

    ros::Subscriber sub_lidar = nh.subscribe<sensor_msgs::LaserScan>("scan",1, &callback_lidar);
    ros::Subscriber sensor = nh. subscribe<std_msgs::Float32MultiArray>("sensor", 1000, &callback_odom);

    pub_cloud = nh.advertise<sensor_msgs::PointCloud>("map", 1);
    pub_lidar = nh.advertise<sensor_msgs::PointCloud>("lidar", 1);
    pub_tfd_lidar = nh.advertise<sensor_msgs::PointCloud>("tfd_lidar", 1);
    pub_closest_point = nh.advertise<std_msgs::Float32MultiArray>("align_pole", 2);

    usleep(500000);
    draw_map();

    ros::spin();
    return 0;

}