// Auto-generated. Do not edit!

// (in-package yolo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NamedPoseArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.poses = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NamedPoseArray
    // Serialize message field [names]
    // Serialize the length for message field [names]
    bufferOffset = _serializer.uint32(obj.names.length, buffer, bufferOffset);
    obj.names.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NamedPoseArray
    let len;
    let data = new NamedPoseArray(null);
    // Deserialize message field [names]
    // Deserialize array length for message field [names]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.names = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.names[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += 56 * object.poses.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolo/NamedPoseArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd55d7c9033cda1a6709b27c7341d0b57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String[] names
    geometry_msgs/Pose[] poses
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NamedPoseArray(null);
    if (msg.names !== undefined) {
      resolved.names = new Array(msg.names.length);
      for (let i = 0; i < resolved.names.length; ++i) {
        resolved.names[i] = std_msgs.msg.String.Resolve(msg.names[i]);
      }
    }
    else {
      resolved.names = []
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    return resolved;
    }
};

module.exports = NamedPoseArray;
