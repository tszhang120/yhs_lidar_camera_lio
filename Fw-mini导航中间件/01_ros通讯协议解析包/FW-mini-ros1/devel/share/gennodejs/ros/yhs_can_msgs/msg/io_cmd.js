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

class io_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.io_cmd_lamp_ctrl = null;
      this.io_cmd_unlock = null;
      this.io_cmd_lower_beam_headlamp = null;
      this.io_cmd_upper_beam_headlamp = null;
      this.io_cmd_turn_lamp = null;
      this.io_cmd_braking_lamp = null;
      this.io_cmd_clearance_lamp = null;
      this.io_cmd_fog_lamp = null;
      this.io_cmd_speaker = null;
    }
    else {
      if (initObj.hasOwnProperty('io_cmd_lamp_ctrl')) {
        this.io_cmd_lamp_ctrl = initObj.io_cmd_lamp_ctrl
      }
      else {
        this.io_cmd_lamp_ctrl = false;
      }
      if (initObj.hasOwnProperty('io_cmd_unlock')) {
        this.io_cmd_unlock = initObj.io_cmd_unlock
      }
      else {
        this.io_cmd_unlock = false;
      }
      if (initObj.hasOwnProperty('io_cmd_lower_beam_headlamp')) {
        this.io_cmd_lower_beam_headlamp = initObj.io_cmd_lower_beam_headlamp
      }
      else {
        this.io_cmd_lower_beam_headlamp = false;
      }
      if (initObj.hasOwnProperty('io_cmd_upper_beam_headlamp')) {
        this.io_cmd_upper_beam_headlamp = initObj.io_cmd_upper_beam_headlamp
      }
      else {
        this.io_cmd_upper_beam_headlamp = false;
      }
      if (initObj.hasOwnProperty('io_cmd_turn_lamp')) {
        this.io_cmd_turn_lamp = initObj.io_cmd_turn_lamp
      }
      else {
        this.io_cmd_turn_lamp = 0;
      }
      if (initObj.hasOwnProperty('io_cmd_braking_lamp')) {
        this.io_cmd_braking_lamp = initObj.io_cmd_braking_lamp
      }
      else {
        this.io_cmd_braking_lamp = false;
      }
      if (initObj.hasOwnProperty('io_cmd_clearance_lamp')) {
        this.io_cmd_clearance_lamp = initObj.io_cmd_clearance_lamp
      }
      else {
        this.io_cmd_clearance_lamp = false;
      }
      if (initObj.hasOwnProperty('io_cmd_fog_lamp')) {
        this.io_cmd_fog_lamp = initObj.io_cmd_fog_lamp
      }
      else {
        this.io_cmd_fog_lamp = false;
      }
      if (initObj.hasOwnProperty('io_cmd_speaker')) {
        this.io_cmd_speaker = initObj.io_cmd_speaker
      }
      else {
        this.io_cmd_speaker = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type io_cmd
    // Serialize message field [io_cmd_lamp_ctrl]
    bufferOffset = _serializer.bool(obj.io_cmd_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [io_cmd_unlock]
    bufferOffset = _serializer.bool(obj.io_cmd_unlock, buffer, bufferOffset);
    // Serialize message field [io_cmd_lower_beam_headlamp]
    bufferOffset = _serializer.bool(obj.io_cmd_lower_beam_headlamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_upper_beam_headlamp]
    bufferOffset = _serializer.bool(obj.io_cmd_upper_beam_headlamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_turn_lamp]
    bufferOffset = _serializer.uint8(obj.io_cmd_turn_lamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_braking_lamp]
    bufferOffset = _serializer.bool(obj.io_cmd_braking_lamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_clearance_lamp]
    bufferOffset = _serializer.bool(obj.io_cmd_clearance_lamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_fog_lamp]
    bufferOffset = _serializer.bool(obj.io_cmd_fog_lamp, buffer, bufferOffset);
    // Serialize message field [io_cmd_speaker]
    bufferOffset = _serializer.bool(obj.io_cmd_speaker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type io_cmd
    let len;
    let data = new io_cmd(null);
    // Deserialize message field [io_cmd_lamp_ctrl]
    data.io_cmd_lamp_ctrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_unlock]
    data.io_cmd_unlock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_lower_beam_headlamp]
    data.io_cmd_lower_beam_headlamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_upper_beam_headlamp]
    data.io_cmd_upper_beam_headlamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_turn_lamp]
    data.io_cmd_turn_lamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [io_cmd_braking_lamp]
    data.io_cmd_braking_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_clearance_lamp]
    data.io_cmd_clearance_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_fog_lamp]
    data.io_cmd_fog_lamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [io_cmd_speaker]
    data.io_cmd_speaker = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yhs_can_msgs/io_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fff005dafb7015ce36adc67decd872a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool	 io_cmd_lamp_ctrl
    bool	 io_cmd_unlock
    bool     io_cmd_lower_beam_headlamp
    bool     io_cmd_upper_beam_headlamp     
    uint8	 io_cmd_turn_lamp
    bool     io_cmd_braking_lamp
    bool     io_cmd_clearance_lamp
    bool     io_cmd_fog_lamp
    bool	 io_cmd_speaker
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new io_cmd(null);
    if (msg.io_cmd_lamp_ctrl !== undefined) {
      resolved.io_cmd_lamp_ctrl = msg.io_cmd_lamp_ctrl;
    }
    else {
      resolved.io_cmd_lamp_ctrl = false
    }

    if (msg.io_cmd_unlock !== undefined) {
      resolved.io_cmd_unlock = msg.io_cmd_unlock;
    }
    else {
      resolved.io_cmd_unlock = false
    }

    if (msg.io_cmd_lower_beam_headlamp !== undefined) {
      resolved.io_cmd_lower_beam_headlamp = msg.io_cmd_lower_beam_headlamp;
    }
    else {
      resolved.io_cmd_lower_beam_headlamp = false
    }

    if (msg.io_cmd_upper_beam_headlamp !== undefined) {
      resolved.io_cmd_upper_beam_headlamp = msg.io_cmd_upper_beam_headlamp;
    }
    else {
      resolved.io_cmd_upper_beam_headlamp = false
    }

    if (msg.io_cmd_turn_lamp !== undefined) {
      resolved.io_cmd_turn_lamp = msg.io_cmd_turn_lamp;
    }
    else {
      resolved.io_cmd_turn_lamp = 0
    }

    if (msg.io_cmd_braking_lamp !== undefined) {
      resolved.io_cmd_braking_lamp = msg.io_cmd_braking_lamp;
    }
    else {
      resolved.io_cmd_braking_lamp = false
    }

    if (msg.io_cmd_clearance_lamp !== undefined) {
      resolved.io_cmd_clearance_lamp = msg.io_cmd_clearance_lamp;
    }
    else {
      resolved.io_cmd_clearance_lamp = false
    }

    if (msg.io_cmd_fog_lamp !== undefined) {
      resolved.io_cmd_fog_lamp = msg.io_cmd_fog_lamp;
    }
    else {
      resolved.io_cmd_fog_lamp = false
    }

    if (msg.io_cmd_speaker !== undefined) {
      resolved.io_cmd_speaker = msg.io_cmd_speaker;
    }
    else {
      resolved.io_cmd_speaker = false
    }

    return resolved;
    }
};

module.exports = io_cmd;
