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

class steering_ctrl_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering_ctrl_fb_gear = null;
      this.steering_ctrl_fb_velocity = null;
      this.steering_ctrl_fb_steering = null;
    }
    else {
      if (initObj.hasOwnProperty('steering_ctrl_fb_gear')) {
        this.steering_ctrl_fb_gear = initObj.steering_ctrl_fb_gear
      }
      else {
        this.steering_ctrl_fb_gear = 0;
      }
      if (initObj.hasOwnProperty('steering_ctrl_fb_velocity')) {
        this.steering_ctrl_fb_velocity = initObj.steering_ctrl_fb_velocity
      }
      else {
        this.steering_ctrl_fb_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('steering_ctrl_fb_steering')) {
        this.steering_ctrl_fb_steering = initObj.steering_ctrl_fb_steering
      }
      else {
        this.steering_ctrl_fb_steering = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type steering_ctrl_fb
    // Serialize message field [steering_ctrl_fb_gear]
    bufferOffset = _serializer.uint8(obj.steering_ctrl_fb_gear, buffer, bufferOffset);
    // Serialize message field [steering_ctrl_fb_velocity]
    bufferOffset = _serializer.float32(obj.steering_ctrl_fb_velocity, buffer, bufferOffset);
    // Serialize message field [steering_ctrl_fb_steering]
    bufferOffset = _serializer.float32(obj.steering_ctrl_fb_steering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type steering_ctrl_fb
    let len;
    let data = new steering_ctrl_fb(null);
    // Deserialize message field [steering_ctrl_fb_gear]
    data.steering_ctrl_fb_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_ctrl_fb_velocity]
    data.steering_ctrl_fb_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_ctrl_fb_steering]
    data.steering_ctrl_fb_steering = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/steering_ctrl_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c48518d11e7c77d61a72dc84b8f68b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8    steering_ctrl_fb_gear
    float32  steering_ctrl_fb_velocity
    float32  steering_ctrl_fb_steering
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new steering_ctrl_fb(null);
    if (msg.steering_ctrl_fb_gear !== undefined) {
      resolved.steering_ctrl_fb_gear = msg.steering_ctrl_fb_gear;
    }
    else {
      resolved.steering_ctrl_fb_gear = 0
    }

    if (msg.steering_ctrl_fb_velocity !== undefined) {
      resolved.steering_ctrl_fb_velocity = msg.steering_ctrl_fb_velocity;
    }
    else {
      resolved.steering_ctrl_fb_velocity = 0.0
    }

    if (msg.steering_ctrl_fb_steering !== undefined) {
      resolved.steering_ctrl_fb_steering = msg.steering_ctrl_fb_steering;
    }
    else {
      resolved.steering_ctrl_fb_steering = 0.0
    }

    return resolved;
    }
};

module.exports = steering_ctrl_fb;
