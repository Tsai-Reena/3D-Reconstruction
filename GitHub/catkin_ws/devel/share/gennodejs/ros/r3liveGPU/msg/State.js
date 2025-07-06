// Auto-generated. Do not edit!

// (in-package r3liveGPU.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rot_end = null;
      this.pos_end = null;
      this.vel_end = null;
      this.bias_g = null;
      this.bias_a = null;
      this.gravity = null;
      this.rot_ext_i2c = null;
      this.pos_ext_i2c = null;
      this.cam_intrinsic = null;
      this.cov = null;
      this.td_ext_i2c_delta = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rot_end')) {
        this.rot_end = initObj.rot_end
      }
      else {
        this.rot_end = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('pos_end')) {
        this.pos_end = initObj.pos_end
      }
      else {
        this.pos_end = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('vel_end')) {
        this.vel_end = initObj.vel_end
      }
      else {
        this.vel_end = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('bias_g')) {
        this.bias_g = initObj.bias_g
      }
      else {
        this.bias_g = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('bias_a')) {
        this.bias_a = initObj.bias_a
      }
      else {
        this.bias_a = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('rot_ext_i2c')) {
        this.rot_ext_i2c = initObj.rot_ext_i2c
      }
      else {
        this.rot_ext_i2c = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('pos_ext_i2c')) {
        this.pos_ext_i2c = initObj.pos_ext_i2c
      }
      else {
        this.pos_ext_i2c = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('cam_intrinsic')) {
        this.cam_intrinsic = initObj.cam_intrinsic
      }
      else {
        this.cam_intrinsic = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('cov')) {
        this.cov = initObj.cov
      }
      else {
        this.cov = new Array(841).fill(0);
      }
      if (initObj.hasOwnProperty('td_ext_i2c_delta')) {
        this.td_ext_i2c_delta = initObj.td_ext_i2c_delta
      }
      else {
        this.td_ext_i2c_delta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [rot_end] has the right length
    if (obj.rot_end.length !== 9) {
      throw new Error('Unable to serialize array field rot_end - length must be 9')
    }
    // Serialize message field [rot_end]
    bufferOffset = _arraySerializer.float64(obj.rot_end, buffer, bufferOffset, 9);
    // Check that the constant length array field [pos_end] has the right length
    if (obj.pos_end.length !== 3) {
      throw new Error('Unable to serialize array field pos_end - length must be 3')
    }
    // Serialize message field [pos_end]
    bufferOffset = _arraySerializer.float64(obj.pos_end, buffer, bufferOffset, 3);
    // Check that the constant length array field [vel_end] has the right length
    if (obj.vel_end.length !== 3) {
      throw new Error('Unable to serialize array field vel_end - length must be 3')
    }
    // Serialize message field [vel_end]
    bufferOffset = _arraySerializer.float64(obj.vel_end, buffer, bufferOffset, 3);
    // Check that the constant length array field [bias_g] has the right length
    if (obj.bias_g.length !== 3) {
      throw new Error('Unable to serialize array field bias_g - length must be 3')
    }
    // Serialize message field [bias_g]
    bufferOffset = _arraySerializer.float64(obj.bias_g, buffer, bufferOffset, 3);
    // Check that the constant length array field [bias_a] has the right length
    if (obj.bias_a.length !== 3) {
      throw new Error('Unable to serialize array field bias_a - length must be 3')
    }
    // Serialize message field [bias_a]
    bufferOffset = _arraySerializer.float64(obj.bias_a, buffer, bufferOffset, 3);
    // Check that the constant length array field [gravity] has the right length
    if (obj.gravity.length !== 3) {
      throw new Error('Unable to serialize array field gravity - length must be 3')
    }
    // Serialize message field [gravity]
    bufferOffset = _arraySerializer.float64(obj.gravity, buffer, bufferOffset, 3);
    // Check that the constant length array field [rot_ext_i2c] has the right length
    if (obj.rot_ext_i2c.length !== 9) {
      throw new Error('Unable to serialize array field rot_ext_i2c - length must be 9')
    }
    // Serialize message field [rot_ext_i2c]
    bufferOffset = _arraySerializer.float64(obj.rot_ext_i2c, buffer, bufferOffset, 9);
    // Check that the constant length array field [pos_ext_i2c] has the right length
    if (obj.pos_ext_i2c.length !== 3) {
      throw new Error('Unable to serialize array field pos_ext_i2c - length must be 3')
    }
    // Serialize message field [pos_ext_i2c]
    bufferOffset = _arraySerializer.float64(obj.pos_ext_i2c, buffer, bufferOffset, 3);
    // Check that the constant length array field [cam_intrinsic] has the right length
    if (obj.cam_intrinsic.length !== 4) {
      throw new Error('Unable to serialize array field cam_intrinsic - length must be 4')
    }
    // Serialize message field [cam_intrinsic]
    bufferOffset = _arraySerializer.float64(obj.cam_intrinsic, buffer, bufferOffset, 4);
    // Check that the constant length array field [cov] has the right length
    if (obj.cov.length !== 841) {
      throw new Error('Unable to serialize array field cov - length must be 841')
    }
    // Serialize message field [cov]
    bufferOffset = _arraySerializer.float64(obj.cov, buffer, bufferOffset, 841);
    // Serialize message field [td_ext_i2c_delta]
    bufferOffset = _serializer.float64(obj.td_ext_i2c_delta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rot_end]
    data.rot_end = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [pos_end]
    data.pos_end = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [vel_end]
    data.vel_end = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [bias_g]
    data.bias_g = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [bias_a]
    data.bias_a = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [gravity]
    data.gravity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [rot_ext_i2c]
    data.rot_ext_i2c = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [pos_ext_i2c]
    data.pos_ext_i2c = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [cam_intrinsic]
    data.cam_intrinsic = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [cov]
    data.cov = _arrayDeserializer.float64(buffer, bufferOffset, 841)
    // Deserialize message field [td_ext_i2c_delta]
    data.td_ext_i2c_delta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7056;
  }

  static datatype() {
    // Returns string type for a message object
    return 'r3liveGPU/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1348c3b12f099a76e76d6b155ce1633';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # State.msg
    std_msgs/Header header       # ROS標頭
    float64[9] rot_end           # Rotation matrix at the end lidar point
    float64[3] pos_end           # Position at the end lidar point (world frame)
    float64[3] vel_end           # Velocity at the end lidar point (world frame)
    float64[3] bias_g            # Gyroscope bias
    float64[3] bias_a            # Accelerator bias
    float64[3] gravity           # Estimated gravity acceleration
    float64[9] rot_ext_i2c       # Extrinsic rotation between IMU frame to Camera frame
    float64[3] pos_ext_i2c       # Extrinsic position between IMU frame to Camera frame
    float64[4] cam_intrinsic     # Camera intrinsic parameters [fx, fy, cx, cy]
    float64[841] cov             # States covariance matrix
    float64 td_ext_i2c_delta     # Extrinsic time delta between IMU frame to Camera frame
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rot_end !== undefined) {
      resolved.rot_end = msg.rot_end;
    }
    else {
      resolved.rot_end = new Array(9).fill(0)
    }

    if (msg.pos_end !== undefined) {
      resolved.pos_end = msg.pos_end;
    }
    else {
      resolved.pos_end = new Array(3).fill(0)
    }

    if (msg.vel_end !== undefined) {
      resolved.vel_end = msg.vel_end;
    }
    else {
      resolved.vel_end = new Array(3).fill(0)
    }

    if (msg.bias_g !== undefined) {
      resolved.bias_g = msg.bias_g;
    }
    else {
      resolved.bias_g = new Array(3).fill(0)
    }

    if (msg.bias_a !== undefined) {
      resolved.bias_a = msg.bias_a;
    }
    else {
      resolved.bias_a = new Array(3).fill(0)
    }

    if (msg.gravity !== undefined) {
      resolved.gravity = msg.gravity;
    }
    else {
      resolved.gravity = new Array(3).fill(0)
    }

    if (msg.rot_ext_i2c !== undefined) {
      resolved.rot_ext_i2c = msg.rot_ext_i2c;
    }
    else {
      resolved.rot_ext_i2c = new Array(9).fill(0)
    }

    if (msg.pos_ext_i2c !== undefined) {
      resolved.pos_ext_i2c = msg.pos_ext_i2c;
    }
    else {
      resolved.pos_ext_i2c = new Array(3).fill(0)
    }

    if (msg.cam_intrinsic !== undefined) {
      resolved.cam_intrinsic = msg.cam_intrinsic;
    }
    else {
      resolved.cam_intrinsic = new Array(4).fill(0)
    }

    if (msg.cov !== undefined) {
      resolved.cov = msg.cov;
    }
    else {
      resolved.cov = new Array(841).fill(0)
    }

    if (msg.td_ext_i2c_delta !== undefined) {
      resolved.td_ext_i2c_delta = msg.td_ext_i2c_delta;
    }
    else {
      resolved.td_ext_i2c_delta = 0.0
    }

    return resolved;
    }
};

module.exports = State;
