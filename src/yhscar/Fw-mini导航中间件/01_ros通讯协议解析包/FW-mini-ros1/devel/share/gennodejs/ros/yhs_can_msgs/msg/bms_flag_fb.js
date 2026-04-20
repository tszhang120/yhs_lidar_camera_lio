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

class bms_flag_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bms_flag_fb_soc = null;
      this.bms_flag_fb_single_ov = null;
      this.bms_flag_fb_single_uv = null;
      this.bms_flag_fb_ov = null;
      this.bms_flag_fb_uv = null;
      this.bms_flag_fb_charge_ot = null;
      this.bms_flag_fb_charge_ut = null;
      this.bms_flag_fb_discharge_ot = null;
      this.bms_flag_fb_discharge_ut = null;
      this.bms_flag_fb_charge_oc = null;
      this.bms_flag_fb_discharge_oc = null;
      this.bms_flag_fb_short = null;
      this.bms_flag_fb_ic_error = null;
      this.bms_flag_fb_lock_mos = null;
      this.bms_flag_fb_charge_flag = null;
      this.bms_flag_fb_hight_temperature = null;
      this.bms_flag_fb_low_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('bms_flag_fb_soc')) {
        this.bms_flag_fb_soc = initObj.bms_flag_fb_soc
      }
      else {
        this.bms_flag_fb_soc = 0;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_single_ov')) {
        this.bms_flag_fb_single_ov = initObj.bms_flag_fb_single_ov
      }
      else {
        this.bms_flag_fb_single_ov = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_single_uv')) {
        this.bms_flag_fb_single_uv = initObj.bms_flag_fb_single_uv
      }
      else {
        this.bms_flag_fb_single_uv = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_ov')) {
        this.bms_flag_fb_ov = initObj.bms_flag_fb_ov
      }
      else {
        this.bms_flag_fb_ov = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_uv')) {
        this.bms_flag_fb_uv = initObj.bms_flag_fb_uv
      }
      else {
        this.bms_flag_fb_uv = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_charge_ot')) {
        this.bms_flag_fb_charge_ot = initObj.bms_flag_fb_charge_ot
      }
      else {
        this.bms_flag_fb_charge_ot = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_charge_ut')) {
        this.bms_flag_fb_charge_ut = initObj.bms_flag_fb_charge_ut
      }
      else {
        this.bms_flag_fb_charge_ut = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_discharge_ot')) {
        this.bms_flag_fb_discharge_ot = initObj.bms_flag_fb_discharge_ot
      }
      else {
        this.bms_flag_fb_discharge_ot = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_discharge_ut')) {
        this.bms_flag_fb_discharge_ut = initObj.bms_flag_fb_discharge_ut
      }
      else {
        this.bms_flag_fb_discharge_ut = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_charge_oc')) {
        this.bms_flag_fb_charge_oc = initObj.bms_flag_fb_charge_oc
      }
      else {
        this.bms_flag_fb_charge_oc = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_discharge_oc')) {
        this.bms_flag_fb_discharge_oc = initObj.bms_flag_fb_discharge_oc
      }
      else {
        this.bms_flag_fb_discharge_oc = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_short')) {
        this.bms_flag_fb_short = initObj.bms_flag_fb_short
      }
      else {
        this.bms_flag_fb_short = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_ic_error')) {
        this.bms_flag_fb_ic_error = initObj.bms_flag_fb_ic_error
      }
      else {
        this.bms_flag_fb_ic_error = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_lock_mos')) {
        this.bms_flag_fb_lock_mos = initObj.bms_flag_fb_lock_mos
      }
      else {
        this.bms_flag_fb_lock_mos = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_charge_flag')) {
        this.bms_flag_fb_charge_flag = initObj.bms_flag_fb_charge_flag
      }
      else {
        this.bms_flag_fb_charge_flag = false;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_hight_temperature')) {
        this.bms_flag_fb_hight_temperature = initObj.bms_flag_fb_hight_temperature
      }
      else {
        this.bms_flag_fb_hight_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('bms_flag_fb_low_temperature')) {
        this.bms_flag_fb_low_temperature = initObj.bms_flag_fb_low_temperature
      }
      else {
        this.bms_flag_fb_low_temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bms_flag_fb
    // Serialize message field [bms_flag_fb_soc]
    bufferOffset = _serializer.uint8(obj.bms_flag_fb_soc, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_single_ov]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_single_ov, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_single_uv]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_single_uv, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_ov]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_ov, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_uv]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_uv, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_charge_ot]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_charge_ot, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_charge_ut]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_charge_ut, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_discharge_ot]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_discharge_ot, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_discharge_ut]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_discharge_ut, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_charge_oc]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_charge_oc, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_discharge_oc]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_discharge_oc, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_short]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_short, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_ic_error]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_ic_error, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_lock_mos]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_lock_mos, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_charge_flag]
    bufferOffset = _serializer.bool(obj.bms_flag_fb_charge_flag, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_hight_temperature]
    bufferOffset = _serializer.float32(obj.bms_flag_fb_hight_temperature, buffer, bufferOffset);
    // Serialize message field [bms_flag_fb_low_temperature]
    bufferOffset = _serializer.float32(obj.bms_flag_fb_low_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bms_flag_fb
    let len;
    let data = new bms_flag_fb(null);
    // Deserialize message field [bms_flag_fb_soc]
    data.bms_flag_fb_soc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_single_ov]
    data.bms_flag_fb_single_ov = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_single_uv]
    data.bms_flag_fb_single_uv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_ov]
    data.bms_flag_fb_ov = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_uv]
    data.bms_flag_fb_uv = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_charge_ot]
    data.bms_flag_fb_charge_ot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_charge_ut]
    data.bms_flag_fb_charge_ut = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_discharge_ot]
    data.bms_flag_fb_discharge_ot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_discharge_ut]
    data.bms_flag_fb_discharge_ut = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_charge_oc]
    data.bms_flag_fb_charge_oc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_discharge_oc]
    data.bms_flag_fb_discharge_oc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_short]
    data.bms_flag_fb_short = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_ic_error]
    data.bms_flag_fb_ic_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_lock_mos]
    data.bms_flag_fb_lock_mos = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_charge_flag]
    data.bms_flag_fb_charge_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_hight_temperature]
    data.bms_flag_fb_hight_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bms_flag_fb_low_temperature]
    data.bms_flag_fb_low_temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/bms_flag_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eca005b4236cdc33bec1ff0de5c3a0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 bms_flag_fb_soc
    bool bms_flag_fb_single_ov
    bool bms_flag_fb_single_uv
    bool bms_flag_fb_ov
    bool bms_flag_fb_uv
    bool bms_flag_fb_charge_ot
    bool bms_flag_fb_charge_ut
    bool bms_flag_fb_discharge_ot
    bool bms_flag_fb_discharge_ut
    bool bms_flag_fb_charge_oc
    bool bms_flag_fb_discharge_oc
    bool bms_flag_fb_short
    bool bms_flag_fb_ic_error
    bool bms_flag_fb_lock_mos
    bool bms_flag_fb_charge_flag
    float32 bms_flag_fb_hight_temperature
    float32 bms_flag_fb_low_temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bms_flag_fb(null);
    if (msg.bms_flag_fb_soc !== undefined) {
      resolved.bms_flag_fb_soc = msg.bms_flag_fb_soc;
    }
    else {
      resolved.bms_flag_fb_soc = 0
    }

    if (msg.bms_flag_fb_single_ov !== undefined) {
      resolved.bms_flag_fb_single_ov = msg.bms_flag_fb_single_ov;
    }
    else {
      resolved.bms_flag_fb_single_ov = false
    }

    if (msg.bms_flag_fb_single_uv !== undefined) {
      resolved.bms_flag_fb_single_uv = msg.bms_flag_fb_single_uv;
    }
    else {
      resolved.bms_flag_fb_single_uv = false
    }

    if (msg.bms_flag_fb_ov !== undefined) {
      resolved.bms_flag_fb_ov = msg.bms_flag_fb_ov;
    }
    else {
      resolved.bms_flag_fb_ov = false
    }

    if (msg.bms_flag_fb_uv !== undefined) {
      resolved.bms_flag_fb_uv = msg.bms_flag_fb_uv;
    }
    else {
      resolved.bms_flag_fb_uv = false
    }

    if (msg.bms_flag_fb_charge_ot !== undefined) {
      resolved.bms_flag_fb_charge_ot = msg.bms_flag_fb_charge_ot;
    }
    else {
      resolved.bms_flag_fb_charge_ot = false
    }

    if (msg.bms_flag_fb_charge_ut !== undefined) {
      resolved.bms_flag_fb_charge_ut = msg.bms_flag_fb_charge_ut;
    }
    else {
      resolved.bms_flag_fb_charge_ut = false
    }

    if (msg.bms_flag_fb_discharge_ot !== undefined) {
      resolved.bms_flag_fb_discharge_ot = msg.bms_flag_fb_discharge_ot;
    }
    else {
      resolved.bms_flag_fb_discharge_ot = false
    }

    if (msg.bms_flag_fb_discharge_ut !== undefined) {
      resolved.bms_flag_fb_discharge_ut = msg.bms_flag_fb_discharge_ut;
    }
    else {
      resolved.bms_flag_fb_discharge_ut = false
    }

    if (msg.bms_flag_fb_charge_oc !== undefined) {
      resolved.bms_flag_fb_charge_oc = msg.bms_flag_fb_charge_oc;
    }
    else {
      resolved.bms_flag_fb_charge_oc = false
    }

    if (msg.bms_flag_fb_discharge_oc !== undefined) {
      resolved.bms_flag_fb_discharge_oc = msg.bms_flag_fb_discharge_oc;
    }
    else {
      resolved.bms_flag_fb_discharge_oc = false
    }

    if (msg.bms_flag_fb_short !== undefined) {
      resolved.bms_flag_fb_short = msg.bms_flag_fb_short;
    }
    else {
      resolved.bms_flag_fb_short = false
    }

    if (msg.bms_flag_fb_ic_error !== undefined) {
      resolved.bms_flag_fb_ic_error = msg.bms_flag_fb_ic_error;
    }
    else {
      resolved.bms_flag_fb_ic_error = false
    }

    if (msg.bms_flag_fb_lock_mos !== undefined) {
      resolved.bms_flag_fb_lock_mos = msg.bms_flag_fb_lock_mos;
    }
    else {
      resolved.bms_flag_fb_lock_mos = false
    }

    if (msg.bms_flag_fb_charge_flag !== undefined) {
      resolved.bms_flag_fb_charge_flag = msg.bms_flag_fb_charge_flag;
    }
    else {
      resolved.bms_flag_fb_charge_flag = false
    }

    if (msg.bms_flag_fb_hight_temperature !== undefined) {
      resolved.bms_flag_fb_hight_temperature = msg.bms_flag_fb_hight_temperature;
    }
    else {
      resolved.bms_flag_fb_hight_temperature = 0.0
    }

    if (msg.bms_flag_fb_low_temperature !== undefined) {
      resolved.bms_flag_fb_low_temperature = msg.bms_flag_fb_low_temperature;
    }
    else {
      resolved.bms_flag_fb_low_temperature = 0.0
    }

    return resolved;
    }
};

module.exports = bms_flag_fb;
