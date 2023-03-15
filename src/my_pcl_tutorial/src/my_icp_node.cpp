#include <my_icp.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "my_icp_node");
    ros::NodeHandle nh;
    ros::Rate rate(100);

    itsrobocon_ros::My_ICP my_icp(nh);

    while(ros::ok())
    {
        ros::spinOnce();
        rate.sleep();
    }
}