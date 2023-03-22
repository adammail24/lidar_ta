// Generated by gencpp from file ros_er/accelerometer.msg
// DO NOT EDIT!


#ifndef ROS_ER_MESSAGE_ACCELEROMETER_H
#define ROS_ER_MESSAGE_ACCELEROMETER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_er
{
template <class ContainerAllocator>
struct accelerometer_
{
  typedef accelerometer_<ContainerAllocator> Type;

  accelerometer_()
    : x(0)
    , y(0)
    , z(0)
    , abs(0.0)
    , deg(0.0)  {
    }
  accelerometer_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)
    , z(0)
    , abs(0.0)
    , deg(0.0)  {
  (void)_alloc;
    }



   typedef int16_t _x_type;
  _x_type x;

   typedef int16_t _y_type;
  _y_type y;

   typedef int16_t _z_type;
  _z_type z;

   typedef float _abs_type;
  _abs_type abs;

   typedef float _deg_type;
  _deg_type deg;





  typedef boost::shared_ptr< ::ros_er::accelerometer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_er::accelerometer_<ContainerAllocator> const> ConstPtr;

}; // struct accelerometer_

typedef ::ros_er::accelerometer_<std::allocator<void> > accelerometer;

typedef boost::shared_ptr< ::ros_er::accelerometer > accelerometerPtr;
typedef boost::shared_ptr< ::ros_er::accelerometer const> accelerometerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_er::accelerometer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_er::accelerometer_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_er::accelerometer_<ContainerAllocator1> & lhs, const ::ros_er::accelerometer_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.abs == rhs.abs &&
    lhs.deg == rhs.deg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_er::accelerometer_<ContainerAllocator1> & lhs, const ::ros_er::accelerometer_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_er

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_er::accelerometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_er::accelerometer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_er::accelerometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_er::accelerometer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_er::accelerometer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_er::accelerometer_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_er::accelerometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60988a549f73f8fefc8885d02a7d28b8";
  }

  static const char* value(const ::ros_er::accelerometer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60988a549f73f8feULL;
  static const uint64_t static_value2 = 0xfc8885d02a7d28b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_er::accelerometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_er/accelerometer";
  }

  static const char* value(const ::ros_er::accelerometer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_er::accelerometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 x\n"
"int16 y\n"
"int16 z\n"
"\n"
"float32 abs\n"
"float32 deg\n"
;
  }

  static const char* value(const ::ros_er::accelerometer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_er::accelerometer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.abs);
      stream.next(m.deg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct accelerometer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_er::accelerometer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_er::accelerometer_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<int16_t>::stream(s, indent + "  ", v.z);
    s << indent << "abs: ";
    Printer<float>::stream(s, indent + "  ", v.abs);
    s << indent << "deg: ";
    Printer<float>::stream(s, indent + "  ", v.deg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ER_MESSAGE_ACCELEROMETER_H
