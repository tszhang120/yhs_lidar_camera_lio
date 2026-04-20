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

class rf_wheel_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rf_wheel_fb_velocity = null;
      this.rf_wheel_fb_pulse = null;
    }
    else {
      if (initObj.hasOwnProperty('rf_wheel_fb_velocity')) {
        this.rf_wheel_fb_velocity = initObj.rf_wheel_fb_velocity
      }
      else {
        this.rf_wheel_fb_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('rf_wheel_fb_pulse')) {
        this.rf_wheel_fb_pulse = initObj.rf_wheel_fb_pulse
      }
      else {
        this.rf_wheel_fb_pulse = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rf_wheel_fb
    // Serialize message field [rf_wheel_fb_velocity]
    bufferOffset = _serializer.float32(obj.rf_wheel_fb_velocity, buffer, bufferOffset);
    // Serialize message field [rf_wheel_fb_pulse]
    bufferOffset = _serializer.int32(obj.rf_wheel_fb_pulse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rf_wheel_fb
    let len;
    let data = new rf_wheel_fb(null);
    // Deserialize message field [rf_wheel_fb_velocity]
    data.rf_wheel_fb_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rf_wheel_fb_pulse]
    data.rf_wheel_fb_pulse = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/rf_wheel_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c39cd0a425deda982cb7e6e23fde4945';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32    rf_wheel_fb_velocity
    int32      rf_wheel_fb_pulse
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rf_wheel_fb(null);
    if (msg.rf_wheel_fb_velocity !== undefined) {
      resolved.rf_wheel_fb_velocity = msg.rf_wheel_fb_velocity;
    }
    else {
      resolved.rf_wheel_fb_velocity = 0.0
    }

    if (msg.rf_wheel_fb_pulse !== undefined) {
      resolved.rf_wheel_fb_pulse = msg.rf_wheel_fb_pulse;
    }
    else {
      resolved.rf_wheel_fb_pulse = 0
    }

    return resolved;
    }
};

module.exports = rf_wheel_fb;
