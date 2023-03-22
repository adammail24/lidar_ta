// Generated by gencpp from file ros_er/tuning.msg
// DO NOT EDIT!


#ifndef ROS_ER_MESSAGE_TUNING_H
#define ROS_ER_MESSAGE_TUNING_H


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
struct tuning_
{
  typedef tuning_<ContainerAllocator> Type;

  tuning_()
    : val_int(0)
    , val_float(0.0)
    , counter(0)
    , is_float(false)
    , ctr_msg(0)  {
    }
  tuning_(const ContainerAllocator& _alloc)
    : val_int(0)
    , val_float(0.0)
    , counter(0)
    , is_float(false)
    , ctr_msg(0)  {
  (void)_alloc;
    }



   typedef int32_t _val_int_type;
  _val_int_type val_int;

   typedef float _val_float_type;
  _val_float_type val_float;

   typedef int8_t _counter_type;
  _counter_type counter;

   typedef uint8_t _is_float_type;
  _is_float_type is_float;

   typedef uint8_t _ctr_msg_type;
  _ctr_msg_type ctr_msg;





  typedef boost::shared_ptr< ::ros_er::tuning_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_er::tuning_<ContainerAllocator> const> ConstPtr;

}; // struct tuning_

typedef ::ros_er::tuning_<std::allocator<void> > tuning;

typedef boost::shared_ptr< ::ros_er::tuning > tuningPtr;
typedef boost::shared_ptr< ::ros_er::tuning const> tuningConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_er::tuning_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_er::tuning_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_er::tuning_<ContainerAllocator1> & lhs, const ::ros_er::tuning_<ContainerAllocator2> & rhs)
{
  return lhs.val_int == rhs.val_int &&
    lhs.val_float == rhs.val_float &&
    lhs.counter == rhs.counter &&
    lhs.is_float == rhs.is_float &&
    lhs.ctr_msg == rhs.ctr_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_er::tuning_<ContainerAllocator1> & lhs, const ::ros_er::tuning_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_er

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_er::tuning_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_er::tuning_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_er::tuning_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_er::tuning_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_er::tuning_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_er::tuning_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_er::tuning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "258fcfb474f715e8b678ea8d146e1b92";
  }

  static const char* value(const ::ros_er::tuning_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x258fcfb474f715e8ULL;
  static const uint64_t static_value2 = 0xb678ea8d146e1b92ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_er::tuning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_er/tuning";
  }

  static const char* value(const ::ros_er::tuning_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_er::tuning_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 val_int\n"
"float32 val_float\n"
"\n"
"int8 counter\n"
"bool is_float\n"
"\n"
"uint8 ctr_msg\n"
;
  }

  static const char* value(const ::ros_er::tuning_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_er::tuning_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.val_int);
      stream.next(m.val_float);
      stream.next(m.counter);
      stream.next(m.is_float);
      stream.next(m.ctr_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tuning_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_er::tuning_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_er::tuning_<ContainerAllocator>& v)
  {
    s << indent << "val_int: ";
    Printer<int32_t>::stream(s, indent + "  ", v.val_int);
    s << indent << "val_float: ";
    Printer<float>::stream(s, indent + "  ", v.val_float);
    s << indent << "counter: ";
    Printer<int8_t>::stream(s, indent + "  ", v.counter);
    s << indent << "is_float: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_float);
    s << indent << "ctr_msg: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ctr_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ER_MESSAGE_TUNING_H
