#include "my_motion.h"

namespace itsrobocon_ros
{

My_Motion::My_Motion(ros::NodeHandle nh)
{
    sub_position = nh.subscribe("turtle1/pose", 6, &My_Motion::callback_position, this);
    pub_speed = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
}

void My_Motion::callback_position(const turtlesim::Pose& msg_position)
{
    pos_x = msg_position.x;
    pos_y = msg_position.y;
    pos_z = msg_position.theta;

    lin_vel = msg_position.linear_velocity;
    ang_vel = msg_position.angular_velocity;

    // std::cout << "x = " << pos_x << " y = " << pos_y << " z = " << pos_z << std::endl;
}

void My_Motion::motion_local2global(geometry_msgs::Twist msg_local)
{
    geometry_msgs::Twist msg_global;

    msg_global.linear.x  = msg_local.linear.x * cosf(pos_z) + msg_local.linear.y * sinf(pos_z);
    msg_global.linear.y  = msg_local.linear.x * -sin(pos_z) + msg_local.linear.y * cosf(pos_z);
    msg_global.angular.z = msg_local.angular.z;

    pub_speed.publish(msg_global);

}

void My_Motion::motion_x(float target_x, float target_y, float target_z, float v_x, float v_y, float v_z, float offset)
{
    static float init_pos[3] = {0,0,0};
    static float error[3] = {0,0,0}, prev_error[3] = {0,0,0};
    float kp[3] = {1,1,1} , ki[3] = {0,0,0}, kd[3] = {0,0,0};
    float p_[3] = {0,0,0}, i_[3] = {0,0,0}, d_[3] = {0,0,0};
    float output_vel[3] = {0,0,0};

    int coba = 0,coba1 = 0;
    geometry_msgs::Twist pub_speed_turtle;

    init_pos[0] = pos_x;
    init_pos[1] = pos_y;
    init_pos[2] = pos_z;

    // std::cout << "x = " << init_pos[0] << " y = " << init_pos[1] << " z = " << init_pos[2] << std::endl;

    ros::Rate rate_local(100);

    while(ros::ok() && (((pos_x < target_x - offset) && (target_x - offset > init_pos[0]))
            || ((pos_x > target_x + offset) && (target_x + offset < init_pos[0])))
            )
    {   
        prev_error[0] = error[0];
        prev_error[1] = error[1];
        prev_error[2] = error[2];

        error[0] = target_x - pos_x;
        error[1] = target_y - pos_y;
        error[2] = target_z - pos_z;



        // std::cout<< "e[0] = " << error[0]<<std::endl;
        // std::cout<< "e[1] = " << error[1]<<std::endl;
        // std::cout<< "e[2] = " << error[2]<<std::endl;

        for(int i=0;i<3;i++)
        {
            p_[i]  = kp[i] * error[i];
            i_[i] += ki[i] * error[i];
            d_[i]  = kd[i] * (error[i] - prev_error[i]);

            output_vel[i] = p_[i] + i_[i] + d_[i];
        }

        // std::cout<< "e[0] = " << error[0]<<std::endl;
        // std::cout<< "e[1] = " << error[1]<<std::endl;
        // std::cout<< "e[2] = " << error[2]<<std::endl;


        pub_speed_turtle.linear.x  = output_vel[0];
        pub_speed_turtle.linear.y  = output_vel[1];
        pub_speed_turtle.angular.z = output_vel[2];

        motion_local2global(pub_speed_turtle);


        rate_local.sleep();
        ros::spinOnce();
    }
    
}
int a;
void My_Motion::pure_pursuit(std::vector<float> target_x, std::vector<float> target_y, std::vector<float> target_z, float v_x, float v_y, float v_z, float lookhead)
{
    static float error[3]= {0,0,0}, prev_error[3]= {0,0,0};
    float kp[3]={3,3,1}, ki[3]= {0,0,0}, kd[3]= {0,0,0};
    float p_[3]= {0,0,0}, i_[3]= {0,0,0}, d_[3]= {0,0,0};
    float theta_=0;
    float output_vel[3]= {0,0,0};

    geometry_msgs::Twist pub_speed_turtle;

    ros::Rate rate_local(100);

    while(ros::ok() && !target_x.empty())
    {
        if((sqrtf(pow((target_x.front() - pos_x),2) + pow((target_y.front() - pos_y),2)) < lookhead))
        {
            target_x.erase(target_x.begin());
            target_y.erase(target_y.begin());
            target_z.erase(target_z.begin());
        }
        if(target_x.size() == 1)
        {
            target_x.clear();
            target_y.clear();
            target_z.clear();
        }
        prev_error[0] = error[0];
        prev_error[1] = error[1];
        prev_error[2] = error[2];

        error[0] = target_x.front() - pos_x;
        error[1] = target_y.front() - pos_y;
        
        theta_ = (2*(target_x.front()-pos_x)/pow(lookhead,2));

        error[2] = target_z.front() - pos_z;

        // std::cout << "error [0] = " << error[0] << std::endl;
        // std::cout << "error [1] = " << error[1] << std::endl;
        // std::cout << "error [2] = " << error[2] << std::endl;

        std::cout << "titik [0] = " << target_x.front() << std::endl;
        std::cout << "titik [1] = " << target_y.front() << std::endl;
        std::cout << "titik [2] = " << target_z .front() << std::endl;

        for(int i=0;i<3;i++)
        {
            p_[i]  = kp[i] * error[i];
            i_[i] += ki[i] * error[i];
            d_[i]  = kd[i] * (error[i] - prev_error[i]);

            output_vel[i] = p_[i] + i_[i] + d_[i];
        }

        pub_speed_turtle.linear.x  = output_vel[0];
        pub_speed_turtle.linear.y  = output_vel[1];
        pub_speed_turtle.angular.z = output_vel[2];

        motion_local2global(pub_speed_turtle);


        rate_local.sleep();
        ros::spinOnce();


    }
    a++;
    std::cout<<a<<std::endl;


}

}