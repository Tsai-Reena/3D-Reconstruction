// Auto-generated. Do not edit!

// (in-package r3liveGPU.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StampedInt32 = require('./StampedInt32.js');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Int32_PointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.laserCloudSelNum = null;
      this.laserCloudOri = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('laserCloudSelNum')) {
        this.laserCloudSelNum = initObj.laserCloudSelNum
      }
      else {
        this.laserCloudSelNum = new StampedInt32();
      }
      if (initObj.hasOwnProperty('laserCloudOri')) {
        this.laserCloudOri = initObj.laserCloudOri
      }
      else {
        this.laserCloudOri = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Int32_PointCloud
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [laserCloudSelNum]
    bufferOffset = StampedInt32.serialize(obj.laserCloudSelNum, buffer, bufferOffset);
    // Serialize message field [laserCloudOri]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.laserCloudOri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Int32_PointCloud
    let len;
    let data = new Int32_PointCloud(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [laserCloudSelNum]
    data.laserCloudSelNum = StampedInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [laserCloudOri]
    data.laserCloudOri = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += StampedInt32.getMessageSize(object.laserCloudSelNum);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.laserCloudOri);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'r3liveGPU/Int32_PointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f578a8dccc9b97e85c78578fe1b3ae7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Int32_PointCloud.msg
    
    std_msgs/Header header
    r3liveGPU/StampedInt32 laserCloudSelNum
    sensor_msgs/PointCloud2 laserCloudOri
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: r3liveGPU/StampedInt32
    # StampedInt32.msg
    
    std_msgs/Header header
    std_msgs/Int32 data
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Int32_PointCloud(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.laserCloudSelNum !== undefined) {
      resolved.laserCloudSelNum = StampedInt32.Resolve(msg.laserCloudSelNum)
    }
    else {
      resolved.laserCloudSelNum = new StampedInt32()
    }

    if (msg.laserCloudOri !== undefined) {
      resolved.laserCloudOri = sensor_msgs.msg.PointCloud2.Resolve(msg.laserCloudOri)
    }
    else {
      resolved.laserCloudOri = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = Int32_PointCloud;
