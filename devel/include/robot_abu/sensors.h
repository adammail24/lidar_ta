// Generated by gencpp from file robot_abu/sensors.msg
// DO NOT EDIT!


#ifndef ROBOT_ABU_MESSAGE_SENSORS_H
#define ROBOT_ABU_MESSAGE_SENSORS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_abu
{
template <class ContainerAllocator>
struct sensors_
{
  typedef sensors_<ContainerAllocator> Type;

  sensors_()
    : global_pos_x(0.0)
    , global_pos_y(0.0)
    , slider(0)
    , rot(0)
    , rot_deg(0.0)
    , engsel(0)
    , gyro(0.0)
    , gyro_full(0.0)
    , capit(0)
    , sick_kiri(0.0)
    , sick_depan(0.0)
    , sick_belakang(0.0)
    , reset(0)
    , stm_reseted(0)
    , tilt_kiri(0)
    , tilt_kanan(0)  {
    }
  sensors_(const ContainerAllocator& _alloc)
    : global_pos_x(0.0)
    , global_pos_y(0.0)
    , slider(0)
    , rot(0)
    , rot_deg(0.0)
    , engsel(0)
    , gyro(0.0)
    , gyro_full(0.0)
    , capit(0)
    , sick_kiri(0.0)
    , sick_depan(0.0)
    , sick_belakang(0.0)
    , reset(0)
    , stm_reseted(0)
    , tilt_kiri(0)
    , tilt_kanan(0)  {
  (void)_alloc;
    }



   typedef float _global_pos_x_type;
  _global_pos_x_type global_pos_x;

   typedef float _global_pos_y_type;
  _global_pos_y_type global_pos_y;

   typedef int16_t _slider_type;
  _slider_type slider;

   typedef int32_t _rot_type;
  _rot_type rot;

   typedef float _rot_deg_type;
  _rot_deg_type rot_deg;

   typedef int32_t _engsel_type;
  _engsel_type engsel;

   typedef float _gyro_type;
  _gyro_type gyro;

   typedef float _gyro_full_type;
  _gyro_full_type gyro_full;

   typedef int16_t _capit_type;
  _capit_type capit;

   typedef float _sick_kiri_type;
  _sick_kiri_type sick_kiri;

   typedef float _sick_depan_type;
  _sick_depan_type sick_depan;

   typedef float _sick_belakang_type;
  _sick_belakang_type sick_belakang;

   typedef uint8_t _reset_type;
  _reset_type reset;

   typedef uint8_t _stm_reseted_type;
  _stm_reseted_type stm_reseted;

   typedef int8_t _tilt_kiri_type;
  _tilt_kiri_type tilt_kiri;

   typedef int8_t _tilt_kanan_type;
  _tilt_kanan_type tilt_kanan;





  typedef boost::shared_ptr< ::robot_abu::sensors_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_abu::sensors_<ContainerAllocator> const> ConstPtr;

}; // struct sensors_

typedef ::robot_abu::sensors_<std::allocator<void> > sensors;

typedef boost::shared_ptr< ::robot_abu::sensors > sensorsPtr;
typedef boost::shared_ptr< ::robot_abu::sensors const> sensorsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_abu::sensors_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_abu::sensors_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_abu::sensors_<ContainerAllocator1> & lhs, const ::robot_abu::sensors_<ContainerAllocator2> & rhs)
{
  return lhs.global_pos_x == rhs.global_pos_x &&
    lhs.global_pos_y == rhs.global_pos_y &&
    lhs.slider == rhs.slider &&
    lhs.rot == rhs.rot &&
    lhs.rot_deg == rhs.rot_deg &&
    lhs.engsel == rhs.engsel &&
    lhs.gyro == rhs.gyro &&
    lhs.gyro_full == rhs.gyro_full &&
    lhs.capit == rhs.capit &&
    lhs.sick_kiri == rhs.sick_kiri &&
    lhs.sick_depan == rhs.sick_depan &&
    lhs.sick_belakang == rhs.sick_belakang &&
    lhs.reset == rhs.reset &&
    lhs.stm_reseted == rhs.stm_reseted &&
    lhs.tilt_kiri == rhs.tilt_kiri &&
    lhs.tilt_kanan == rhs.tilt_kanan;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_abu::sensors_<ContainerAllocator1> & lhs, const ::robot_abu::sensors_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_abu

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_abu::sensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_abu::sensors_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_abu::sensors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_abu::sensors_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_abu::sensors_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_abu::sensors_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_abu::sensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9591563098ba37db1fbca2b4031831c7";
  }

  static const char* value(const ::robot_abu::sensors_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9591563098ba37dbULL;
  static const uint64_t static_value2 = 0x1fbca2b4031831c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_abu::sensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_abu/sensors";
  }

  static const char* value(const ::robot_abu::sensors_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_abu::sensors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 global_pos_x\n"
"float32 global_pos_y \n"
"int16 slider\n"
"int32 rot\n"
"float32 rot_deg\n"
"int32 engsel\n"
"float32 gyro\n"
"float32 gyro_full\n"
"int16 capit\n"
"float32 sick_kiri\n"
"float32 sick_depan\n"
"float32 sick_belakang\n"
"\n"
"uint8 reset\n"
"uint8 stm_reseted\n"
"\n"
"int8 tilt_kiri\n"
"int8 tilt_kanan\n"
;
  }

  static const char* value(const ::robot_abu::sensors_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_abu::sensors_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.global_pos_x);
      stream.next(m.global_pos_y);
      stream.next(m.slider);
      stream.next(m.rot);
      stream.next(m.rot_deg);
      stream.next(m.engsel);
      stream.next(m.gyro);
      stream.next(m.gyro_full);
      stream.next(m.capit);
      stream.next(m.sick_kiri);
      stream.next(m.sick_depan);
      stream.next(m.sick_belakang);
      stream.next(m.reset);
      stream.next(m.stm_reseted);
      stream.next(m.tilt_kiri);
      stream.next(m.tilt_kanan);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensors_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_abu::sensors_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_abu::sensors_<ContainerAllocator>& v)
  {
    s << indent << "global_pos_x: ";
    Printer<float>::stream(s, indent + "  ", v.global_pos_x);
    s << indent << "global_pos_y: ";
    Printer<float>::stream(s, indent + "  ", v.global_pos_y);
    s << indent << "slider: ";
    Printer<int16_t>::stream(s, indent + "  ", v.slider);
    s << indent << "rot: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rot);
    s << indent << "rot_deg: ";
    Printer<float>::stream(s, indent + "  ", v.rot_deg);
    s << indent << "engsel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.engsel);
    s << indent << "gyro: ";
    Printer<float>::stream(s, indent + "  ", v.gyro);
    s << indent << "gyro_full: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_full);
    s << indent << "capit: ";
    Printer<int16_t>::stream(s, indent + "  ", v.capit);
    s << indent << "sick_kiri: ";
    Printer<float>::stream(s, indent + "  ", v.sick_kiri);
    s << indent << "sick_depan: ";
    Printer<float>::stream(s, indent + "  ", v.sick_depan);
    s << indent << "sick_belakang: ";
    Printer<float>::stream(s, indent + "  ", v.sick_belakang);
    s << indent << "reset: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset);
    s << indent << "stm_reseted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stm_reseted);
    s << indent << "tilt_kiri: ";
    Printer<int8_t>::stream(s, indent + "  ", v.tilt_kiri);
    s << indent << "tilt_kanan: ";
    Printer<int8_t>::stream(s, indent + "  ", v.tilt_kanan);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_ABU_MESSAGE_SENSORS_H