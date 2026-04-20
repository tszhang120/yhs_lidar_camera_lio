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

class bms_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bms_fb_voltage = null;
      this.bms_fb_current = null;
      this.bms_fb_remaining_capacity = null;
    }
    else {
      if (initObj.hasOwnProperty('bms_fb_voltage')) {
        this.bms_fb_voltage = initObj.bms_fb_voltage
      }
      else {
        this.bms_fb_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('bms_fb_current')) {
        this.bms_fb_current = initObj.bms_fb_current
      }
      else {
        this.bms_fb_current = 0.0;
      }
      if (initObj.hasOwnProperty('bms_fb_remaining_capacity')) {
        this.bms_fb_remaining_capacity = initObj.bms_fb_remaining_capacity
      }
      else {
        this.bms_fb_remaining_capacity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bms_fb
    // Serialize message field [bms_fb_voltage]
    bufferOffset = _serializer.float32(obj.bms_fb_voltage, buffer, bufferOffset);
    // Serialize message field [bms_fb_current]
    bufferOffset = _serializer.float32(obj.bms_fb_current, buffer, bufferOffset);
    // Serialize message field [bms_fb_remaining_capacity]
    bufferOffset = _serializer.float32(obj.bms_fb_remaining_capacity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bms_fb
    let len;
    let data = new bms_fb(null);
    // Deserialize message field [bms_fb_voltage]
    data.bms_fb_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bms_fb_current]
    data.bms_fb_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bms_fb_remaining_capacity]
    data.bms_fb_remaining_capacity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/bms_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '931076749ca0fa82fb86cdb07acbd6a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 bms_fb_voltage
    float32 bms_fb_current
    float32 bms_fb_remaining_capacity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bms_fb(null);
    if (msg.bms_fb_voltage !== undefined) {
      resolved.bms_fb_voltage = msg.bms_fb_voltage;
    }
    else {
      resolved.bms_fb_voltage = 0.0
    }

    if (msg.bms_fb_current !== undefined) {
      resolved.bms_fb_current = msg.bms_fb_current;
    }
    else {
      resolved.bms_fb_current = 0.0
    }

    if (msg.bms_fb_remaining_capacity !== undefined) {
      resolved.bms_fb_remaining_capacity = msg.bms_fb_remaining_capacity;
    }
    else {
      resolved.bms_fb_remaining_capacity = 0.0
    }

    return resolved;
    }
};

module.exports = bms_fb;
