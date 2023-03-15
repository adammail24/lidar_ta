#include "my_motion.h"

std::vector<float>target_x_global = {0, 0.211, 0.421, 0.632, 0.842, 1.05, 1.26, 1.47, 1.68, 1.89, 2.11, 2.32, 2.53, 2.74, 2.95, 3.16, 3.37, 3.58, 3.79, 4.0};
std::vector<float>target_y_global= {0, 1.64, 2.8, 3.54, 3.92, 3.99, 3.81, 3.43, 2.92, 2.31, 1.69, 1.08, 0.567, 0.19, 0.00816, 0.0787, 0.457, 1.2, 2.36, 4.0};
std::vector<float>target_z_global={3.14, 2.81, 2.48, 2.15, 1.82, 1.49, 1.16, 0.827, 0.496, 0.165, -0.165, -0.496, -0.827, -1.16, -1.49, -1.82, -2.15, -2.48, -2.81, -3.14};


int main(int argc, char** argv)
{
    ros::init(argc, argv, "my_motion_node");
    ros::NodeHandle nh;
    ros::Rate rate(100);

    itsrobocon_ros::My_Motion my_motion(nh);

    while(ros::ok())
    {
        // my_motion.motion_x(5,5,1,2,2,1, 0.1);
        my_motion.pure_pursuit(target_x_global, target_y_global, target_z_global, 1,1,1,0.2);
        ros::spinOnce();
        rate.sleep();
    }
}