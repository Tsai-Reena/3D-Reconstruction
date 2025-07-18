// Generated by gencpp from file r3liveGPU/Int32_PointCloud2.msg
// DO NOT EDIT!


#ifndef R3LIVEGPU_MESSAGE_INT32_POINTCLOUD2_H
#define R3LIVEGPU_MESSAGE_INT32_POINTCLOUD2_H


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
#include <sensor_msgs/PointCloud2.h>

namespace r3liveGPU
{
template <class ContainerAllocator>
struct Int32_PointCloud2_
{
  typedef Int32_PointCloud2_<ContainerAllocator> Type;

  Int32_PointCloud2_()
    : header()
    , laserCloudSelNum()
    , laserCloudOri()
    , coeffSel()  {
    }
  Int32_PointCloud2_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , laserCloudSelNum(_alloc)
    , laserCloudOri(_alloc)
    , coeffSel(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::r3liveGPU::StampedInt32_<ContainerAllocator>  _laserCloudSelNum_type;
  _laserCloudSelNum_type laserCloudSelNum;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _laserCloudOri_type;
  _laserCloudOri_type laserCloudOri;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _coeffSel_type;
  _coeffSel_type coeffSel;





  typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> const> ConstPtr;

}; // struct Int32_PointCloud2_

typedef ::r3liveGPU::Int32_PointCloud2_<std::allocator<void> > Int32_PointCloud2;

typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud2 > Int32_PointCloud2Ptr;
typedef boost::shared_ptr< ::r3liveGPU::Int32_PointCloud2 const> Int32_PointCloud2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator1> & lhs, const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.laserCloudSelNum == rhs.laserCloudSelNum &&
    lhs.laserCloudOri == rhs.laserCloudOri &&
    lhs.coeffSel == rhs.coeffSel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator1> & lhs, const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace r3liveGPU

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27f54a123896653a8d283d67794695c0";
  }

  static const char* value(const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27f54a123896653aULL;
  static const uint64_t static_value2 = 0x8d283d67794695c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "r3liveGPU/Int32_PointCloud2";
  }

  static const char* value(const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Int32_PointCloud2.msg\n"
"\n"
"std_msgs/Header header\n"
"r3liveGPU/StampedInt32 laserCloudSelNum\n"
"sensor_msgs/PointCloud2 laserCloudOri\n"
"sensor_msgs/PointCloud2 coeffSel\n"
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

  static const char* value(const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.laserCloudSelNum);
      stream.next(m.laserCloudOri);
      stream.next(m.coeffSel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Int32_PointCloud2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::r3liveGPU::Int32_PointCloud2_<ContainerAllocator>& v)
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
    if (true || !indent.empty())
      s << std::endl;
    s << indent << "coeffSel: ";
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.coeffSel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // R3LIVEGPU_MESSAGE_INT32_POINTCLOUD2_H
