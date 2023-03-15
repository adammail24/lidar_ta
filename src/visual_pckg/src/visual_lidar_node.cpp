#include <ros/ros.h>
#include <ros/package.h>
#include <visualization_msgs/MarkerArray.h>
#include <sensor_msgs/LaserScan.h>

int idcount = 0;
int id_increment = 0;

ros::Publisher pub_marker;
visualization_msgs::MarkerArray marker;

void add_field(float x, float y, float z, float d_x, float d_y, float color_r, float color_g, float color_b, int id);
void add_bevel(float x, float y, float z, float d_x, float d_y, int id);
void add_cube(float x, float y, float z, float d_x, float d_y, float d_z, float r_, float g_, float b_, int id);
void add_line_field_strip(float x1, float y1, float x2, float y2, int id);




int main(int argc, char** argv)
{
    ros::init(argc, argv, "visual_lidar_node");
    ros::NodeHandle nh;
    ros::Rate r(100);

    //Red Field 1
    add_field(3.0, 6.0, 0.0, 6.0, 12.0, 1.0f, 0.5f, 0.46f, id_increment++);
    
    //Blue Field 1
    add_field(9.0, 6.0, 0.0, 6.0, 12.0, 0.56f, 0.9f, 1.0f, id_increment++);

    //Angkor Blue Field 2
    add_cube(7.7, 6.0, 0.1, 3.4, 6.8, 0.2, 0.56f, 0.9f, 1.0f, id_increment++);

    //Angkor Red Field 2
    add_cube(4.3, 6.0, 0.1, 3.4, 6.8, 0.2, 1.0f, 0.5f, 0.46f, id_increment++);

    //Angkor Center Area
    add_cube(6.0, 6.0, 0.2, 3.0, 3.0, 0.4, 0.96f, 0.47f, 0.16f, id_increment++);

    //River
    add_field(6.0, 6.0, 0.01, 8.0, 8.0, 0.35f, 0.78f, 1.0f, id_increment++);

    //Blue Start Zone
    add_field(11.450, 6.0, 0.01, 1.0, 1.5, 0.04f, 0.14f, 0.96f, id_increment++);

    //Red Start Zone
    add_field(0.55, 6.0, 0.01, 1.0, 1.5, 1.0f, 0.07f, 0.01f, id_increment++);

    //Ring Zone
    add_field(0.3, 0.3, 0.01, 0.5, 0.5, 1.0f, 1.0f, 1.0f, id_increment++);
    add_field(11.7, 0.3, 0.01, 0.5, 0.5, 1.0f, 1.0f, 1.0f, id_increment++);
    add_field(0.3, 11.7, 0.01, 0.5, 0.5, 1.0f, 1.0f, 1.0f, id_increment++);
    add_field(11.7, 11.7, 0.01, 0.5, 0.5, 1.0f, 1.0f, 1.0f, id_increment++);
    add_field(4.25, 6.0, 0.21, 0.5, 1.5, 1.0f, 1.0f, 1.0f, id_increment++);
    add_field(7.75, 6.0, 0.21, 0.5, 1.5, 1.0f, 1.0f, 1.0f, id_increment++);



    //Bevel
    //add bevel bawah
    add_bevel(6.0, 0.025, 0.0, 12.0, 0.05, id_increment++);
    
    //add bevel kanan
    add_bevel(11.975, 6.0, 0.0, 0.05, 12.0, id_increment++);

    //add bevel kiri
    add_bevel(0.025, 6.0, 0.0, 0.05, 12.0, id_increment++);

    //add bevel atas
    add_bevel(6.0, 11.975, 0.0, 12.0, 0.05, id_increment++);


    


    pub_marker = nh.advertise<visualization_msgs::MarkerArray>("field_marker", 1);

    int i=0;
    while(i++ < 2)
    {
        pub_marker.publish(marker);
        usleep(1000000);
        std::cout << "Publish Field Done" << std::endl;
    }

    while(ros::ok())
    {
        // pub_marker.publish(marker);


        // ros::spinOnce(); 
        r.sleep();

    }
}

void add_field(float x, float y, float z, float d_x, float d_y, float color_r, float color_g, float color_b, int id)
{
    visualization_msgs::Marker m_pole;

    m_pole.header.frame_id = "world";
    m_pole.header.stamp = ros::Time::now();
    m_pole.ns = "field";
    m_pole.id = id;
    m_pole.type = visualization_msgs::Marker::CUBE;
    m_pole.action = visualization_msgs::Marker::ADD;

    m_pole.pose.position.x = x;
    m_pole.pose.position.y = y;
    m_pole.pose.position.z = z;
    m_pole.pose.orientation.x = 0.0;
    m_pole.pose.orientation.y = 0.0;
    m_pole.pose.orientation.z = 0.0;
    m_pole.pose.orientation.w = 1.0;

    m_pole.scale.x = d_x;
    m_pole.scale.y = d_y;
    m_pole.scale.z = 0.01;

    m_pole.color.r = color_r;
    m_pole.color.g = color_g;
    m_pole.color.b = color_b;

    m_pole.color.a = 1.0;

    m_pole.lifetime = ros::Duration();
    marker.markers.push_back(m_pole);

    std::cout<<m_pole<<std::endl;
    //deadzone
    // m_pole.id = id+100;
    // m_pole.scale.x = d/2 + 2*robot_width;
    // m_pole.scale.y = d/2 + 2*robot_len;
    // m_pole.scale.z = 0.01;
    // m_pole.pose.position.z = 0;
    // markers.markers.push_back(m_pole);
}

void add_bevel(float x, float y, float z, float d_x, float d_y, int id)
{
    visualization_msgs::Marker m_pole;

    m_pole.header.frame_id = "world";
    m_pole.header.stamp = ros::Time::now();
    m_pole.ns = "field";
    m_pole.id = id;
    m_pole.type = visualization_msgs::Marker::CUBE;
    m_pole.action = visualization_msgs::Marker::ADD;

    m_pole.pose.position.x = x;
    m_pole.pose.position.y = y;
    m_pole.pose.position.z = z;
    m_pole.pose.orientation.x = 0.0;
    m_pole.pose.orientation.y = 0.0;
    m_pole.pose.orientation.z = 0.0;
    m_pole.pose.orientation.w = 1.0;

    m_pole.scale.x = d_x;
    m_pole.scale.y = d_y;
    m_pole.scale.z = 0.08;

    m_pole.color.r = 0.96f;
    m_pole.color.g = 0.47f;
    m_pole.color.b = 0.17f;

    m_pole.color.a = 1.0;

    m_pole.lifetime = ros::Duration();
    marker.markers.push_back(m_pole);

    //deadzone
    // m_pole.id = id+100;
    // m_pole.scale.x = d/2 + 2*robot_width;
    // m_pole.scale.y = d/2 + 2*robot_len;
    // m_pole.scale.z = 0.01;
    // m_pole.pose.position.z = 0;
    // markers.markers.push_back(m_pole);
}

void add_cube(float x, float y, float z, float d_x, float d_y, float d_z, float r_, float g_, float b_, int id)
{
    visualization_msgs::Marker m_pole;

    m_pole.header.frame_id = "world";
    m_pole.header.stamp = ros::Time::now();
    m_pole.ns = "field";
    m_pole.id = id;
    m_pole.type = visualization_msgs::Marker::CUBE;
    m_pole.action = visualization_msgs::Marker::ADD;

    m_pole.pose.position.x = x;
    m_pole.pose.position.y = y;
    m_pole.pose.position.z = z;
    m_pole.pose.orientation.x = 0.0;
    m_pole.pose.orientation.y = 0.0;
    m_pole.pose.orientation.z = 0.0;
    m_pole.pose.orientation.w = 1.0;

    m_pole.scale.x = d_x;
    m_pole.scale.y = d_y;
    m_pole.scale.z = d_z;

    m_pole.color.r = r_;
    m_pole.color.g = g_;
    m_pole.color.b = b_;

    m_pole.color.a = 1.0;

    m_pole.lifetime = ros::Duration();
    marker.markers.push_back(m_pole);

    //deadzone
    // m_pole.id = id+100;
    // m_pole.scale.x = d/2 + 2*robot_width;
    // m_pole.scale.y = d/2 + 2*robot_len;
    // m_pole.scale.z = 0.01;
    // m_pole.pose.position.z = 0;
    // markers.markers.push_back(m_pole);
}

void add_line_field_strip(float x1, float y1, float x2, float y2, int id)
{
    visualization_msgs::Marker m_pole;
    int i=0;

    m_pole.header.frame_id = "world";
    m_pole.header.stamp = ros::Time::now();
    m_pole.ns = "field";
    m_pole.id = id;
    m_pole.type = visualization_msgs::Marker::LINE_STRIP;
    m_pole.action = visualization_msgs::Marker::ADD;

    // m_pole.pose.position.x = x;
    // m_pole.pose.position.y = y;
    m_pole.pose.position.z = 0.01;
    // m_pole.pose.orientation.x = 0.0;
    // m_pole.pose.orientation.y = 0.0;
    // m_pole.pose.orientation.z = 0.0;
    m_pole.pose.orientation.w = 1.0;

    m_pole.scale.x = 0.05;

    m_pole.color.r = 0.0f;
    m_pole.color.g = 0.0f;
    m_pole.color.b = 0.0f;

    m_pole.color.a = 1.0;

    m_pole.lifetime = ros::Duration();
    
    geometry_msgs::Point p;

    // if(i==0)
    // {
        p.x = x1;
        p.y = y1;
        p.z = 0.0;
        m_pole.points.push_back(p);
        // markers.markers.push_back(m_pole);
        std::cout<<"masuk 1"<<std::endl;
        // i++;
    // }

    // else if(i==1)
    // {
        p.x = x2;
        p.y = y2;
        p.z = 0.0;
        m_pole.points.push_back(p);
        // markers.markers.push_back(m_pole);
        std::cout<<"masuk 2"<<std::endl;
        // i++;
    // }
    marker.markers.push_back(m_pole);

    //deadzone
    // m_pole.id = id+100;
    // m_pole.scale.x = d/2 + 2*robot_width;
    // m_pole.scale.y = d/2 + 2*robot_len;
    // m_pole.scale.z = 0.01;
    // m_pole.pose.position.z = 0;
    // markers.markers.push_back(m_pole);
}