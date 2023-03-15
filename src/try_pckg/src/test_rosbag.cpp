#include "ros/ros.h"
#include "ros/package.h"
#include "std_msgs/Int32.h"

ros::Publisher pub_inc_number;
int a;
std_msgs::Int32 inc_number_test;


int main(int argc, char** argv)
{
    ros::init(argc,argv,"test_rosbag");
    ros::NodeHandle nh;
    ros::Rate rate(1);


    pub_inc_number = nh.advertise<std_msgs::Int32>("inc_number", 10);

    while(ros::ok())
    {
        a++;
        inc_number_test.data = a;
        pub_inc_number.publish(inc_number_test);
        ros::spinOnce();
        rate.sleep();
    }
}