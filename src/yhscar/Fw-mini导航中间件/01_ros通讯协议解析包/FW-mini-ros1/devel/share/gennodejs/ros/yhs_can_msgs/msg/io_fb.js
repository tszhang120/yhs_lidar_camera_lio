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

class io_fb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.io_fb_lamp_ctrl = null;
      this.io_fb_unlock = null;
      this.io_fb_lower_beam_headlamp = null;
      this.io_fb_upper_beam_headlamp = null;
      this.io_fb_turn_lamp = null;
      this.io_fb_braking_lamp = null;
      this.io_fb_clearance_lamp = null;
      this.io_fb_fog_lamp = null;
      this.io_fb_speaker = null;
      this.io_fb_fl_impact_sensor = null;
      this.io_fb_fm_impact_sensor = null;
      this.io_fb_fr_impact_sensor = null;
      this.io_fb_rl_impact_sensor = null;
      this.io_fb_rm_impact_sensor = null;
      this.io_fb_rr_impact_sensor = null;
      this.io_fb_fl_drop_sensor = null;
      this.io_fb_fm_drop_sensor = null;
      this.io_fb_fr_drop_sensor = null;
      this.io_fb_rl_drop_sensor = null;
      this.io_fb_rm_drop_sensor = null;
      this.io_fb_rr_drop_sensor = null;
      this.io_fb_estop = null;
      this.io_fb_joypad_ctrl = null;
      this.io_fb_charge_state = null;
    }
    else {
      if (initObj.hasOwnProperty('io_fb_lamp_ctrl')) {
        this.io_fb_lamp_ctrl = initObj.io_fb_lamp_ctrl
      }
      else {
        this.io_fb_lamp_ctrl = false;
      }
      if (initObj.hasOwnProperty('io_fb_unlock')) {
        this.io_fb_unlock = initObj.io_fb_unlock
      }
      else {
        this.io_fb_unlock = false;
      }
      if (initObj.hasOwnProperty('io_fb_lower_beam_headlamp')) {
        this.io_fb_lower_beam_headlamp = initObj.io_fb_lower_beam_headlamp
      }
      else {
        this.io_fb_lower_beam_headlamp = false;
      }
      if (initObj.hasOwnProperty('io_fb_upper_beam_headlamp')) {
        this.io_fb_upper_beam_headlamp = initObj.io_fb_upper_beam_headlamp
      }
      else {
        this.io_fb_upper_beam_headlamp = false;
      }
      if (initObj.hasOwnProperty('io_fb_turn_lamp')) {
        this.io_fb_turn_lamp = initObj.io_fb_turn_lamp
      }
      else {
        this.io_fb_turn_lamp = 0;
      }
      if (initObj.hasOwnProperty('io_fb_braking_lamp')) {
        this.io_fb_braking_lamp = initObj.io_fb_braking_lamp
      }
      else {
        this.io_fb_braking_lamp = false;
      }
      if (initObj.hasOwnProperty('io_fb_clearance_lamp')) {
        this.io_fb_clearance_lamp = initObj.io_fb_clearance_lamp
      }
      else {
        this.io_fb_clearance_lamp = false;
      }
      if (initObj.hasOwnProperty('io_fb_fog_lamp')) {
        this.io_fb_fog_lamp = initObj.io_fb_fog_lamp
      }
      else {
        this.io_fb_fog_lamp = false;
      }
      if (initObj.hasOwnProperty('io_fb_speaker')) {
        this.io_fb_speaker = initObj.io_fb_speaker
      }
      else {
        this.io_fb_speaker = false;
      }
      if (initObj.hasOwnProperty('io_fb_fl_impact_sensor')) {
        this.io_fb_fl_impact_sensor = initObj.io_fb_fl_impact_sensor
      }
      else {
        this.io_fb_fl_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_fm_impact_sensor')) {
        this.io_fb_fm_impact_sensor = initObj.io_fb_fm_impact_sensor
      }
      else {
        this.io_fb_fm_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_fr_impact_sensor')) {
        this.io_fb_fr_impact_sensor = initObj.io_fb_fr_impact_sensor
      }
      else {
        this.io_fb_fr_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rl_impact_sensor')) {
        this.io_fb_rl_impact_sensor = initObj.io_fb_rl_impact_sensor
      }
      else {
        this.io_fb_rl_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rm_impact_sensor')) {
        this.io_fb_rm_impact_sensor = initObj.io_fb_rm_impact_sensor
      }
      else {
        this.io_fb_rm_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rr_impact_sensor')) {
        this.io_fb_rr_impact_sensor = initObj.io_fb_rr_impact_sensor
      }
      else {
        this.io_fb_rr_impact_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_fl_drop_sensor')) {
        this.io_fb_fl_drop_sensor = initObj.io_fb_fl_drop_sensor
      }
      else {
        this.io_fb_fl_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_fm_drop_sensor')) {
        this.io_fb_fm_drop_sensor = initObj.io_fb_fm_drop_sensor
      }
      else {
        this.io_fb_fm_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_fr_drop_sensor')) {
        this.io_fb_fr_drop_sensor = initObj.io_fb_fr_drop_sensor
      }
      else {
        this.io_fb_fr_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rl_drop_sensor')) {
        this.io_fb_rl_drop_sensor = initObj.io_fb_rl_drop_sensor
      }
      else {
        this.io_fb_rl_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rm_drop_sensor')) {
        this.io_fb_rm_drop_sensor = initObj.io_fb_rm_drop_sensor
      }
      else {
        this.io_fb_rm_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_rr_drop_sensor')) {
        this.io_fb_rr_drop_sensor = initObj.io_fb_rr_drop_sensor
      }
      else {
        this.io_fb_rr_drop_sensor = false;
      }
      if (initObj.hasOwnProperty('io_fb_estop')) {
        this.io_fb_estop = initObj.io_fb_estop
      }
      else {
        this.io_fb_estop = false;
      }
      if (initObj.hasOwnProperty('io_fb_joypad_ctrl')) {
        this.io_fb_joypad_ctrl = initObj.io_fb_joypad_ctrl
      }
      else {
        this.io_fb_joypad_ctrl = false;
      }
      if (initObj.hasOwnProperty('io_fb_charge_state')) {
        this.io_fb_charge_state = initObj.io_fb_charge_state
      }
      else {
        this.io_fb_charge_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type io_fb
    // Serialize message field [io_fb_lamp_ctrl]
    bufferOffset = _serializer.bool(obj.io_fb_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [io_fb_unlock]
    bufferOffset = _serializer.bool(obj.io_fb_unlock, buffer, bufferOffset);
    // Serialize message field [io_fb_lower_beam_headlamp]
    bufferOffset = _serializer.bool(obj.io_fb_lower_beam_headlamp, buffer, bufferOffset);
    // Serialize message field [io_fb_upper_beam_headlamp]
    bufferOffset = _serializer.bool(obj.io_fb_upper_beam_headlamp, buffer, bufferOffset);
    // Serialize message field [io_fb_turn_lamp]
    bufferOffset = _serializer.int8(obj.io_fb_turn_lamp, buffer, bufferOffset);
    // Serialize message field [io_fb_braking_lamp]
    bufferOffset = _serializer.bool(obj.io_fb_braking_lamp, buffer, bufferOffset);
    // Serialize message field [io_fb_clearance_lamp]
    bufferOffset = _serializer.bool(obj.io_fb_clearance_lamp, buffer, bufferOffset);
    // Serialize message field [io_fb_fog_lamp]
    bufferOffset = _serializer.bool(obj.io_fb_fog_lamp, buffer, bufferOffset);
    // Serialize message field [io_fb_speaker]
    bufferOffset = _serializer.bool(obj.io_fb_speaker, buffer, bufferOffset);
    // Serialize message field [io_fb_fl_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fl_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_fm_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fm_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_fr_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fr_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rl_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rl_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rm_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rm_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rr_impact_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rr_impact_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_fl_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fl_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_fm_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fm_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_fr_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_fr_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rl_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rl_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rm_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rm_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_rr_drop_sensor]
    bufferOffset = _serializer.bool(obj.io_fb_rr_drop_sensor, buffer, bufferOffset);
    // Serialize message field [io_fb_estop]
    bufferOffset = _serializer.bool(obj.io_fb_estop, buffer, bufferOffset);
    // Serialize message field [io_fb_joypad_ctrl]
    bufferOffset = _serializer.bool(obj.io_fb_joypad_ctrl, buffer, bufferOffset);
    // Serialize message field [io_fb_charge_state]
    bufferOffset = _serializer.bool(obj.io_fb_charge_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type io_fb
    let len;
    let data = new io_fb(null);
    // Deserialize message field [io_fb_lamp_ctrl]
    data.io_fb_lamp_ctrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_unlock]
    data.io_fb_unlock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_lower_beam_headlamp]
    data.io_fb_lower_beam_headlamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_upper_beam_headlamp]
    data.io_fb_upper_beam_headlamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_turn_lamp]
    data.io_fb_turn_lamp = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [io_fb_braking_lamp]
    data.io_fb_braking_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_clearance_lamp]
    data.io_fb_clearance_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fog_lamp]
    data.io_fb_fog_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_speaker]
    data.io_fb_speaker = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fl_impact_sensor]
    data.io_fb_fl_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fm_impact_sensor]
    data.io_fb_fm_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fr_impact_sensor]
    data.io_fb_fr_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rl_impact_sensor]
    data.io_fb_rl_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rm_impact_sensor]
    data.io_fb_rm_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rr_impact_sensor]
    data.io_fb_rr_impact_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fl_drop_sensor]
    data.io_fb_fl_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fm_drop_sensor]
    data.io_fb_fm_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_fr_drop_sensor]
    data.io_fb_fr_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rl_drop_sensor]
    data.io_fb_rl_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rm_drop_sensor]
    data.io_fb_rm_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_rr_drop_sensor]
    data.io_fb_rr_drop_sensor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_estop]
    data.io_fb_estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_joypad_ctrl]
    data.io_fb_joypad_ctrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_fb_charge_state]
    data.io_fb_charge_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/io_fb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '734f5c2c489a056cd36d8e25d62c72df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool  io_fb_lamp_ctrl
    bool  io_fb_unlock
    bool  io_fb_lower_beam_headlamp
    bool  io_fb_upper_beam_headlamp
    int8  io_fb_turn_lamp
    bool  io_fb_braking_lamp
    bool  io_fb_clearance_lamp
    bool  io_fb_fog_lamp
    bool  io_fb_speaker
    bool  io_fb_fl_impact_sensor
    bool  io_fb_fm_impact_sensor
    bool  io_fb_fr_impact_sensor
    bool  io_fb_rl_impact_sensor
    bool  io_fb_rm_impact_sensor
    bool  io_fb_rr_impact_sensor
    bool  io_fb_fl_drop_sensor
    bool  io_fb_fm_drop_sensor
    bool  io_fb_fr_drop_sensor
    bool  io_fb_rl_drop_sensor
    bool  io_fb_rm_drop_sensor
    bool  io_fb_rr_drop_sensor
    bool  io_fb_estop
    bool  io_fb_joypad_ctrl
    bool  io_fb_charge_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new io_fb(null);
    if (msg.io_fb_lamp_ctrl !== undefined) {
      resolved.io_fb_lamp_ctrl = msg.io_fb_lamp_ctrl;
    }
    else {
      resolved.io_fb_lamp_ctrl = false
    }

    if (msg.io_fb_unlock !== undefined) {
      resolved.io_fb_unlock = msg.io_fb_unlock;
    }
    else {
      resolved.io_fb_unlock = false
    }

    if (msg.io_fb_lower_beam_headlamp !== undefined) {
      resolved.io_fb_lower_beam_headlamp = msg.io_fb_lower_beam_headlamp;
    }
    else {
      resolved.io_fb_lower_beam_headlamp = false
    }

    if (msg.io_fb_upper_beam_headlamp !== undefined) {
      resolved.io_fb_upper_beam_headlamp = msg.io_fb_upper_beam_headlamp;
    }
    else {
      resolved.io_fb_upper_beam_headlamp = false
    }

    if (msg.io_fb_turn_lamp !== undefined) {
      resolved.io_fb_turn_lamp = msg.io_fb_turn_lamp;
    }
    else {
      resolved.io_fb_turn_lamp = 0
    }

    if (msg.io_fb_braking_lamp !== undefined) {
      resolved.io_fb_braking_lamp = msg.io_fb_braking_lamp;
    }
    else {
      resolved.io_fb_braking_lamp = false
    }

    if (msg.io_fb_clearance_lamp !== undefined) {
      resolved.io_fb_clearance_lamp = msg.io_fb_clearance_lamp;
    }
    else {
      resolved.io_fb_clearance_lamp = false
    }

    if (msg.io_fb_fog_lamp !== undefined) {
      resolved.io_fb_fog_lamp = msg.io_fb_fog_lamp;
    }
    else {
      resolved.io_fb_fog_lamp = false
    }

    if (msg.io_fb_speaker !== undefined) {
      resolved.io_fb_speaker = msg.io_fb_speaker;
    }
    else {
      resolved.io_fb_speaker = false
    }

    if (msg.io_fb_fl_impact_sensor !== undefined) {
      resolved.io_fb_fl_impact_sensor = msg.io_fb_fl_impact_sensor;
    }
    else {
      resolved.io_fb_fl_impact_sensor = false
    }

    if (msg.io_fb_fm_impact_sensor !== undefined) {
      resolved.io_fb_fm_impact_sensor = msg.io_fb_fm_impact_sensor;
    }
    else {
      resolved.io_fb_fm_impact_sensor = false
    }

    if (msg.io_fb_fr_impact_sensor !== undefined) {
      resolved.io_fb_fr_impact_sensor = msg.io_fb_fr_impact_sensor;
    }
    else {
      resolved.io_fb_fr_impact_sensor = false
    }

    if (msg.io_fb_rl_impact_sensor !== undefined) {
      resolved.io_fb_rl_impact_sensor = msg.io_fb_rl_impact_sensor;
    }
    else {
      resolved.io_fb_rl_impact_sensor = false
    }

    if (msg.io_fb_rm_impact_sensor !== undefined) {
      resolved.io_fb_rm_impact_sensor = msg.io_fb_rm_impact_sensor;
    }
    else {
      resolved.io_fb_rm_impact_sensor = false
    }

    if (msg.io_fb_rr_impact_sensor !== undefined) {
      resolved.io_fb_rr_impact_sensor = msg.io_fb_rr_impact_sensor;
    }
    else {
      resolved.io_fb_rr_impact_sensor = false
    }

    if (msg.io_fb_fl_drop_sensor !== undefined) {
      resolved.io_fb_fl_drop_sensor = msg.io_fb_fl_drop_sensor;
    }
    else {
      resolved.io_fb_fl_drop_sensor = false
    }

    if (msg.io_fb_fm_drop_sensor !== undefined) {
      resolved.io_fb_fm_drop_sensor = msg.io_fb_fm_drop_sensor;
    }
    else {
      resolved.io_fb_fm_drop_sensor = false
    }

    if (msg.io_fb_fr_drop_sensor !== undefined) {
      resolved.io_fb_fr_drop_sensor = msg.io_fb_fr_drop_sensor;
    }
    else {
      resolved.io_fb_fr_drop_sensor = false
    }

    if (msg.io_fb_rl_drop_sensor !== undefined) {
      resolved.io_fb_rl_drop_sensor = msg.io_fb_rl_drop_sensor;
    }
    else {
      resolved.io_fb_rl_drop_sensor = false
    }

    if (msg.io_fb_rm_drop_sensor !== undefined) {
      resolved.io_fb_rm_drop_sensor = msg.io_fb_rm_drop_sensor;
    }
    else {
      resolved.io_fb_rm_drop_sensor = false
    }

    if (msg.io_fb_rr_drop_sensor !== undefined) {
      resolved.io_fb_rr_drop_sensor = msg.io_fb_rr_drop_sensor;
    }
    else {
      resolved.io_fb_rr_drop_sensor = false
    }

    if (msg.io_fb_estop !== undefined) {
      resolved.io_fb_estop = msg.io_fb_estop;
    }
    else {
      resolved.io_fb_estop = false
    }

    if (msg.io_fb_joypad_ctrl !== undefined) {
      resolved.io_fb_joypad_ctrl = msg.io_fb_joypad_ctrl;
    }
    else {
      resolved.io_fb_joypad_ctrl = false
    }

    if (msg.io_fb_charge_state !== undefined) {
      resolved.io_fb_charge_state = msg.io_fb_charge_state;
    }
    else {
      resolved.io_fb_charge_state = false
    }

    return resolved;
    }
};

module.exports = io_fb;
