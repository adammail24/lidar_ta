#include <my_icp.h>

namespace itsrobocon_ros
{

My_ICP::My_ICP(ros::NodeHandle nh)
{
    sub_lidar_point = nh.subscribe("scan", 20, &My_ICP::callbackPointCloudLidar, this);
    pub_pcl_lidar = nh.advertise<PointCloudLidar>("lidar_pcl", 10);
}

void My_ICP::callbackPointCloudLidar(const sensor_msgs::LaserScan& msg_lidar)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud(new pcl::PointCloud<pcl::PointXYZ>);
    sensor_msgs::LaserScan pclidar;
    sensor_msgs::PointCloud2 pc2lidar;

    pclidar = msg_lidar;

    //get point cloud lidar 2 from lidar laser scan
    pc2lidar = laserscan2pointcloud2(pclidar);

    //get Point Cloud Library from point closud 2

    // PointCloudLidar::Ptr pointcloudPCL (new PointCloudLidar);
    pcl::PointCloud<pcl::PointXYZ> pointc;
    pointc = pointcloudtwo2pcl(pc2lidar);


    // detection_cloud->points.push_back(*pointc);

}

sensor_msgs::PointCloud2 My_ICP::laserscan2pointcloud2(sensor_msgs::LaserScan laser_lidar_laserscan)
{
    static laser_geometry::LaserProjection projector;
    sensor_msgs::PointCloud2 pc2_dst;
    projector.projectLaser(laser_lidar_laserscan, pc2_dst, -1, laser_geometry::channel_option::Intensity | laser_geometry::channel_option::Distance);
    pc2_dst.header.frame_id = "laser";

    return pc2_dst;
}

pcl::PointCloud<pcl::PointXYZ> My_ICP::pointcloudtwo2pcl(sensor_msgs::PointCloud2 laser_lidar_pointcloud2)
{
    pcl::PointCloud<pcl::PointXYZ> cloud_dst;
    pcl::fromROSMsg(laser_lidar_pointcloud2, cloud_dst);
    return cloud_dst;
}



}