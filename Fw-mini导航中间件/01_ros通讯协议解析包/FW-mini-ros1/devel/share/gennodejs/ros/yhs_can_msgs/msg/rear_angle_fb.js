// Auto-generated. Do not edit!

// (in-package yhs_can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rear_angle_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rear_angle_fb_l = null;
      this.rear_angle_fb_r = null;
    }
    else {
      if (initObj.hasOwnProperty('rear_angle_fb_l')) {
        this.rear_angle_fb_l = initObj.rear_angle_fb_l
      }
      else {
        this.rear_angle_fb_l = 0.0;
      }
      if (initObj.hasOwnProperty('rear_angle_fb_r')) {
        this.rear_angle_fb_r = initObj.rear_angle_fb_r
      }
      else {
        this.rear_angle_fb_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rear_angle_fb
    // Serialize message field [rear_angle_fb_l]
    bufferOffset = _serializer.float32(obj.rear_angle_fb_l, buffer, bufferOffset);
    // Serialize message field [rear_angle_fb_r]
    bufferOffset = _serializer.float32(obj.rear_angle_fb_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rear_angle_fb
    let len;
    let data = new rear_angle_fb(null);
    // Deserialize message field [rear_angle_fb_l]
    data.rear_angle_fb_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_angle_fb_r]
    data.rear_angle_fb_r = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/rear_angle_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad4dde667634fd5c9a4f1ca6f05e41e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32  rear_angle_fb_l
    float32  rear_angle_fb_r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rear_angle_fb(null);
    if (msg.rear_angle_fb_l !== undefined) {
      resolved.rear_angle_fb_l = msg.rear_angle_fb_l;
    }
    else {
      resolved.rear_angle_fb_l = 0.0
    }

    if (msg.rear_angle_fb_r !== undefined) {
      resolved.rear_angle_fb_r = msg.rear_angle_fb_r;
    }
    else {
      resolved.rear_angle_fb_r = 0.0
    }

    return resolved;
    }
};

module.exports = rear_angle_fb;
