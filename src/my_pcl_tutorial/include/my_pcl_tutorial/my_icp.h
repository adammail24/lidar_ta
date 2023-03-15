#ifndef MY_ICP_H
#define MY_ICP_H

//ros
#include <ros/ros.h>
#include <ros/package.h>
#include <ros/subscriber.h>
#include <ros/publisher.h>
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <laser_geometry/laser_geometry.h>
#include <pcl_ros/point_cloud.h>

// std-libraries
#include <iostream>
#include <string>

namespace itsrobocon_ros{
    class My_ICP{
    private:
        ros::Subscriber sub_lidar_point;
        ros::Publisher pub_vel, pub_pcl_lidar;
        // pcl::PointCloud<pcl::PointXYZ> pointcloudPCL;
        typedef pcl::PointCloud<pcl::PointXYZ> PointCloudLidar;

        void callbackPointCloudLidar(const sensor_msgs::LaserScan& msg_lidar);
        sensor_msgs::PointCloud2 laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan);
        pcl::PointCloud<pcl::PointXYZ> pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2);
    
    public:
        My_ICP(ros::NodeHandle nh);
        ~My_ICP(){};
    
    };

}

#endif