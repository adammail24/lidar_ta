#include "ros/ros.h"
#include "nav_msgs/Odometry.h"

ros::Publisher pub_nav;
nav_msgs::Odometry msg_odom;

int main(int argc, char **argv) // Program Main
{
    ros::init(argc, argv, "pub_msg");

    ros::NodeHandle nh;
    ros::Rate rate(4);
    pub_nav = nh.advertise<nav_msgs::Odometry>("odom", 10);

    while(ros::ok())
    {
        msg_odom.child_frame_id = "laser";
        msg_odom.header.frame_id = "base_link";
        msg_odom.pose.pose.position.x +=0.1;
        msg_odom.pose.pose.position.y +=0.1;
        msg_odom.pose.pose.position.z +=0.0;

        msg_odom.pose.pose.orientation.z = 3.0;

        pub_nav.publish(msg_odom);


        ros::spinOnce();
        rate.sleep();
    }

}