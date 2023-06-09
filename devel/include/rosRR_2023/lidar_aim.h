// Generated by gencpp from file rosRR_2023/lidar_aim.msg
// DO NOT EDIT!


#ifndef ROSRR_2023_MESSAGE_LIDAR_AIM_H
#define ROSRR_2023_MESSAGE_LIDAR_AIM_H

#include <ros/service_traits.h>


#include <rosRR_2023/lidar_aimRequest.h>
#include <rosRR_2023/lidar_aimResponse.h>


namespace rosRR_2023
{

struct lidar_aim
{

typedef lidar_aimRequest Request;
typedef lidar_aimResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct lidar_aim
} // namespace rosRR_2023


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosRR_2023::lidar_aim > {
  static const char* value()
  {
    return "4cdded07bae4fc4aff836f568bed0239";
  }

  static const char* value(const ::rosRR_2023::lidar_aim&) { return value(); }
};

template<>
struct DataType< ::rosRR_2023::lidar_aim > {
  static const char* value()
  {
    return "rosRR_2023/lidar_aim";
  }

  static const char* value(const ::rosRR_2023::lidar_aim&) { return value(); }
};


// service_traits::MD5Sum< ::rosRR_2023::lidar_aimRequest> should match
// service_traits::MD5Sum< ::rosRR_2023::lidar_aim >
template<>
struct MD5Sum< ::rosRR_2023::lidar_aimRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosRR_2023::lidar_aim >::value();
  }
  static const char* value(const ::rosRR_2023::lidar_aimRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosRR_2023::lidar_aimRequest> should match
// service_traits::DataType< ::rosRR_2023::lidar_aim >
template<>
struct DataType< ::rosRR_2023::lidar_aimRequest>
{
  static const char* value()
  {
    return DataType< ::rosRR_2023::lidar_aim >::value();
  }
  static const char* value(const ::rosRR_2023::lidar_aimRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosRR_2023::lidar_aimResponse> should match
// service_traits::MD5Sum< ::rosRR_2023::lidar_aim >
template<>
struct MD5Sum< ::rosRR_2023::lidar_aimResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosRR_2023::lidar_aim >::value();
  }
  static const char* value(const ::rosRR_2023::lidar_aimResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosRR_2023::lidar_aimResponse> should match
// service_traits::DataType< ::rosRR_2023::lidar_aim >
template<>
struct DataType< ::rosRR_2023::lidar_aimResponse>
{
  static const char* value()
  {
    return DataType< ::rosRR_2023::lidar_aim >::value();
  }
  static const char* value(const ::rosRR_2023::lidar_aimResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSRR_2023_MESSAGE_LIDAR_AIM_H
