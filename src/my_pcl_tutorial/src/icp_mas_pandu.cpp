#include "pcl/registration/icp.h"
#include "boost/thread/mutex.hpp"
#include "opencv2/opencv.hpp"
#include "pcl/io/pcd_io.h"
#include "pcl/point_types.h"
#include "ros/ros.h"

//=====Prototype
void cllbck_tim_50hz(const ros::TimerEvent &event);

int icp_init();
int icp_routine();

void field_lines_init();
void field_points_init();
void measurements_init();

float pixel_to_cm_x(float x);
float pixel_to_cm_y(float y);
float cm_to_pixel_x(float x);
float cm_to_pixel_y(float y);

void update();

//=====Timer
ros::Timer tim_50hz;
//=====Mutex
boost::mutex mutex_frame_display;

// Frame
cv::Mat frame_display = cv::Mat::zeros(900, 1300, CV_8UC3);
cv::Mat frame_field = cv::Mat::zeros(900, 1300, CV_8UC3);

// Field and Detection Point
std::vector<cv::Point> field_points;
std::vector<cv::Point> detection_points;

// Robot Position
float robot_real_x = 220;
float robot_real_y = 100;
float robot_real_theta = 45 * M_PI / 180;

float robot_estimated_x = 250;
float robot_estimated_y = -50;
float robot_estimated_theta = 60 * M_PI / 180;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "icp");

    ros::NodeHandle NH;
    ros::AsyncSpinner AS(0);

    //=====Timer
    tim_50hz = NH.createTimer(ros::Duration(0.02), cllbck_tim_50hz);

    if (icp_init() == -1)
        ros::shutdown();

    AS.start();
    ros::waitForShutdown();

    tim_50hz.stop();
}

//------------------------------------------------------------------------------
//==============================================================================

void cllbck_tim_50hz(const ros::TimerEvent &event)
{
    if (icp_routine() == -1)
        ros::shutdown();
}

//------------------------------------------------------------------------------
//==============================================================================

int icp_init()
{
    field_lines_init();
    field_points_init();
    measurements_init();

    return 0;
}

int icp_routine()
{
    cv::circle(frame_display, cv::Point(cm_to_pixel_x(robot_real_x), cm_to_pixel_y(robot_real_y)), 10, cv::Scalar(0, 255, 0), -1);
    cv::circle(frame_display, cv::Point(cm_to_pixel_x(robot_estimated_x), cm_to_pixel_y(robot_estimated_y)), 10, cv::Scalar(255, 0, 0), -1);

    //==================================

    imshow("frame_display", frame_display);

    char c = cv::waitKey(1);

    if (c == 27)
        return -1;
    else if (c == ' ')
        update();

    return 0;
}

//------------------------------------------------------------------------------
//==============================================================================

void field_lines_init()
{
    cv::line(frame_field, cv::Point(50, 50), cv::Point(1250, 50), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(50, 850), cv::Point(1250, 850), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(50, 50), cv::Point(50, 850), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(1250, 50), cv::Point(1250, 850), cv::Scalar(255, 255, 255), 5);

    cv::line(frame_field, cv::Point(650, 50), cv::Point(650, 850), cv::Scalar(255, 255, 255), 5);
    cv::circle(frame_field, cv::Point(650, 450), 130, cv::Scalar(255, 255, 255), 5);

    cv::line(frame_field, cv::Point(230, 200), cv::Point(230, 700), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(50, 200), cv::Point(230, 200), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(50, 700), cv::Point(230, 700), cv::Scalar(255, 255, 255), 5);

    cv::line(frame_field, cv::Point(1070, 200), cv::Point(1070, 700), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(1070, 200), cv::Point(1250, 200), cv::Scalar(255, 255, 255), 5);
    cv::line(frame_field, cv::Point(1070, 700), cv::Point(1250, 700), cv::Scalar(255, 255, 255), 5);

    frame_display = frame_field.clone();
}

void field_points_init()
{
    for (int x = 0; x < frame_field.cols; x += 5)
        for (int y = 0; y < frame_field.rows; y += 5)
            if (frame_field.at<cv::Vec3b>(y, x) == cv::Vec3b(255, 255, 255))
            {
                /* Adding the point to the vector. */
                field_points.push_back(cv::Point(pixel_to_cm_x(x), pixel_to_cm_y(y)));

                /* Drawing a circle on the frame_display image. */
                cv::circle(frame_display, cv::Point(x, y), 1, cv::Scalar(0, 0, 255), -1);
            }
}

void measurements_init()
{
    for (int i = 0; i < field_points.size(); i++)
    {
        float delta_x = field_points[i].x - robot_real_x;
        float delta_y = field_points[i].y - robot_real_y;

        float distance = sqrt(pow(delta_x, 2) + pow(delta_y, 2));
        float angle = atan2(delta_y, delta_x);

        if (distance > 250)
            continue;

        float line_real_x = robot_real_x + distance * cos(angle);
        float line_real_y = robot_real_y + distance * sin(angle);
        cv::circle(frame_display, cv::Point(cm_to_pixel_x(line_real_x), cm_to_pixel_y(line_real_y)), 1, cv::Scalar(0, 255, 0), -1);

        float line_estimated_x = robot_estimated_x + distance * cos(angle + robot_estimated_theta - robot_real_theta);
        float line_estimated_y = robot_estimated_y + distance * sin(angle + robot_estimated_theta - robot_real_theta);
        cv::circle(frame_display, cv::Point(cm_to_pixel_x(line_estimated_x), cm_to_pixel_y(line_estimated_y)), 1, cv::Scalar(255, 0, 0), -1);

        detection_points.push_back(cv::Point(line_estimated_x, line_estimated_y));
    }
}

//------------------------------------------------------------------------------
//==============================================================================

float pixel_to_cm_x(float x)
{
    return (x - 650);
}

float pixel_to_cm_y(float y)
{
    return (450 - y);
}

float cm_to_pixel_x(float x)
{
    return (x + 650);
}

float cm_to_pixel_y(float y)
{
    return (450 - y);
}

//------------------------------------------------------------------------------
//==============================================================================

void update()
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr field_cloud(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud(new pcl::PointCloud<pcl::PointXYZ>);

    for (int i = 0; i < field_points.size(); i++)
    {
        pcl::PointXYZ point;
        point.x = field_points[i].x;
        point.y = field_points[i].y;
        point.z = 0;
        field_cloud->points.push_back(point);
    }

    for (int i = 0; i < detection_points.size(); i++)
    {
        pcl::PointXYZ point;
        point.x = detection_points[i].x;
        point.y = detection_points[i].y;
        point.z = 0;
        detection_cloud->points.push_back(point);
    }

    pcl::IterativeClosestPoint<pcl::PointXYZ, pcl::PointXYZ> icp;
    icp.setInputSource(detection_cloud);
    icp.setInputTarget(field_cloud);
    icp.setMaximumIterations(100);

    pcl::PointCloud<pcl::PointXYZ> Final;
    icp.align(Final);

    for (int i = 0; i < Final.points.size(); i++)
    {
        cv::circle(frame_display, cv::Point(cm_to_pixel_x(Final.points[i].x), cm_to_pixel_y(Final.points[i].y)), 3, cv::Scalar(0, 0, 255), -1);
    }

    std::cout << "has converged:" << icp.hasConverged() << " score: " << icp.getFitnessScore() << std::endl;
    std::cout << icp.getFinalTransformation() << std::endl;

    // Transform single point
    Eigen::Vector4f point(robot_estimated_x, robot_estimated_y, 0, 1);
    Eigen::Vector4f transformed_point = icp.getFinalTransformation() * point;

    // Print results
    std::cout << "Transformed point:" << std::endl;
    std::cout << transformed_point << std::endl;

    cv::circle(frame_display, cv::Point(cm_to_pixel_x(transformed_point[0]), cm_to_pixel_y(transformed_point[1])), 5, cv::Scalar(0, 0, 255), -1);
}