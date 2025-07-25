// Generated by gencpp from file r3liveGPU/Int32_PointCloud.msg
// DO NOT EDIT!


#ifndef R3LIVEGPU_MESSAGE_INT32_POINTCLOUD_H
#define R3LIVEGPU_MESSAGE_INT32_POINTCLOUD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <r3liveGPU/StampedInt32.h>
#include <sensor_msgs/PointCloud2.h>

namespace r3liveGPU
{
template <class ContainerAllocator>
struct Int32_PointCloud_
{
  typedef Int32_PointCloud_<ContainerAllocator> Type;

  Int32_PointCloud_()
    : header()
    , laserCloudSelNum()
    , laserCloudOri()  {
    }
  Int32_PointCloud_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , laserCloudSelNum(_alloc)
    , laserCloudOri(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::r3liveGPU::StampedInt32_<ContainerAllocator>  _laserCloudSelNum_type;
  _laserCloudSelNum_type laserCloudSelNum;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _laserCloudOri_type;
  _laserCloudOri_type laserCloudOri;





  typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> const> ConstPtr;

}; // struct Int32_PointCloud_

typedef ::r3liveGPU::Int32_PointCloud_<std::allocator<void> > Int32_PointCloud;

typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud > Int32_PointCloudPtr;
typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud const> Int32_PointCloudConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator1> & lhs, const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.laserCloudSelNum == rhs.laserCloudSelNum &&
    lhs.laserCloudOri == rhs.laserCloudOri;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator1> & lhs, const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace r3liveGPU

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f578a8dccc9b97e85c78578fe1b3ae7a";
  }

  static const char* value(const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf578a8dccc9b97e8ULL;
  static const uint64_t static_value2 = 0x5c78578fe1b3ae7aULL;
};

template<class ContainerAllocator>
struct DataType< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "r3liveGPU/Int32_PointCloud";
  }

  static const char* value(const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Int32_PointCloud.msg\n"
"\n"
"std_msgs/Header header\n"
"r3liveGPU/StampedInt32 laserCloudSelNum\n"
"sensor_msgs/PointCloud2 laserCloudOri\n"
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
"MSG: r3liveGPU/StampedInt32\n"
"# StampedInt32.msg\n"
"\n"
"std_msgs/Header header\n"
"std_msgs/Int32 data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Int32\n"
"int32 data\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.laserCloudSelNum);
      stream.next(m.laserCloudOri);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Int32_PointCloud_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::r3liveGPU::Int32_PointCloud_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::r3liveGPU::Int32_PointCloud_<ContainerAllocator>& v)
  {
    if (false || !indent.empty())
      s << std::endl;
    s << indent << "header: ";
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "laserCloudSelNum: ";
    Printer< ::r3liveGPU::StampedInt32_<ContainerAllocator> >::stream(s, indent + "  ", v.laserCloudSelNum);
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "laserCloudOri: ";
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.laserCloudOri);
  }
};

} // namespace message_operations
} // namespace ros

#endif // R3LIVEGPU_MESSAGE_INT32_POINTCLOUD_H
