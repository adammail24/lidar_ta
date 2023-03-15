#ifndef MY_MOTION_H
#define MY_MOTION_H

//Bussiness ROS
#include <ros/ros.h>
#include <ros/package.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Pose.h>

#include <iostream>
#include <math.h>
#include <queue>
#include <vector>

namespace itsrobocon_ros{
    class My_Motion
    {
    private:
        float pos_x, pos_y, pos_z, lin_vel, ang_vel;

        void callback_position(const turtlesim::Pose& msg_position);
        void motion_local2global(geometry_msgs::Twist msg_local);

        ros::Publisher pub_speed;
        ros::Subscriber sub_position;
        
    public:
        My_Motion(ros::NodeHandle nh);
        ~My_Motion(){};

        void motion_x(float target_x, float target_y, float target_z, float v_x, float v_y, float v_z, float offside);
        void pure_pursuit(std::vector<float> target_x, std::vector<float> target_y, std::vector<float> target_z, float v_x, float v_y, float v_z, float lookhead);

    };
    
    
}



#endif