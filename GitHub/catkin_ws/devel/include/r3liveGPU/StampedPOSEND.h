// Generated by gencpp from file r3liveGPU/StampedPOSEND.msg
// DO NOT EDIT!


#ifndef R3LIVEGPU_MESSAGE_STAMPEDPOSEND_H
#define R3LIVEGPU_MESSAGE_STAMPEDPOSEND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace r3liveGPU
{
template <class ContainerAllocator>
struct StampedPOSEND_
{
  typedef StampedPOSEND_<ContainerAllocator> Type;

  StampedPOSEND_()
    : header()
    , pos_end()  {
    }
  StampedPOSEND_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pos_end(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _pos_end_type;
  _pos_end_type pos_end;





  typedef boost::shared_ptr< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> const> ConstPtr;

}; // struct StampedPOSEND_

typedef ::r3liveGPU::StampedPOSEND_<std::allocator<void> > StampedPOSEND;

typedef boost::shared_ptr< ::r3liveGPU::StampedPOSEND > StampedPOSENDPtr;
typedef boost::shared_ptr< ::r3liveGPU::StampedPOSEND const> StampedPOSENDConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::r3liveGPU::StampedPOSEND_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::r3liveGPU::StampedPOSEND_<ContainerAllocator1> & lhs, const ::r3liveGPU::StampedPOSEND_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pos_end == rhs.pos_end;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::r3liveGPU::StampedPOSEND_<ContainerAllocator1> & lhs, const ::r3liveGPU::StampedPOSEND_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace r3liveGPU

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3973d5c119d824fdcb60b2abfa99d0bc";
  }

  static const char* value(const ::r3liveGPU::StampedPOSEND_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3973d5c119d824fdULL;
  static const uint64_t static_value2 = 0xcb60b2abfa99d0bcULL;
};

template<class ContainerAllocator>
struct DataType< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
{
  static const char* value()
  {
    return "r3liveGPU/StampedPOSEND";
  }

  static const char* value(const ::r3liveGPU::StampedPOSEND_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# StampedPOSEND.msg\n"
"\n"
"std_msgs/Header header\n"
"geometry_msgs/Point pos_end\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::r3liveGPU::StampedPOSEND_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pos_end);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StampedPOSEND_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::r3liveGPU::StampedPOSEND_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::r3liveGPU::StampedPOSEND_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "header: ";
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "pos_end: ";
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.pos_end);
  }
};

} // namespace message_operations
} // namespace ros

#endif // R3LIVEGPU_MESSAGE_STAMPEDPOSEND_H
