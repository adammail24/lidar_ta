// Auto-generated. Do not edit!

// (in-package robot_abu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class surface_to_laptop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_x = null;
      this.speed_y = null;
      this.speed_z = null;
      this.odom_x = null;
      this.odom_y = null;
      this.gyro_full = null;
      this.target_speed_x = null;
      this.target_speed_y = null;
      this.target_speed_z = null;
      this.laser = null;
      this.laser_hpf = null;
      this.command_type = null;
      this.m_ctr = null;
      this.time_stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_x')) {
        this.speed_x = initObj.speed_x
      }
      else {
        this.speed_x = 0;
      }
      if (initObj.hasOwnProperty('speed_y')) {
        this.speed_y = initObj.speed_y
      }
      else {
        this.speed_y = 0;
      }
      if (initObj.hasOwnProperty('speed_z')) {
        this.speed_z = initObj.speed_z
      }
      else {
        this.speed_z = 0;
      }
      if (initObj.hasOwnProperty('odom_x')) {
        this.odom_x = initObj.odom_x
      }
      else {
        this.odom_x = 0.0;
      }
      if (initObj.hasOwnProperty('odom_y')) {
        this.odom_y = initObj.odom_y
      }
      else {
        this.odom_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_full')) {
        this.gyro_full = initObj.gyro_full
      }
      else {
        this.gyro_full = 0.0;
      }
      if (initObj.hasOwnProperty('target_speed_x')) {
        this.target_speed_x = initObj.target_speed_x
      }
      else {
        this.target_speed_x = 0;
      }
      if (initObj.hasOwnProperty('target_speed_y')) {
        this.target_speed_y = initObj.target_speed_y
      }
      else {
        this.target_speed_y = 0;
      }
      if (initObj.hasOwnProperty('target_speed_z')) {
        this.target_speed_z = initObj.target_speed_z
      }
      else {
        this.target_speed_z = 0;
      }
      if (initObj.hasOwnProperty('laser')) {
        this.laser = initObj.laser
      }
      else {
        this.laser = 0.0;
      }
      if (initObj.hasOwnProperty('laser_hpf')) {
        this.laser_hpf = initObj.laser_hpf
      }
      else {
        this.laser_hpf = 0.0;
      }
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = 0;
      }
      if (initObj.hasOwnProperty('m_ctr')) {
        this.m_ctr = initObj.m_ctr
      }
      else {
        this.m_ctr = 0;
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type surface_to_laptop
    // Serialize message field [speed_x]
    bufferOffset = _serializer.int16(obj.speed_x, buffer, bufferOffset);
    // Serialize message field [speed_y]
    bufferOffset = _serializer.int16(obj.speed_y, buffer, bufferOffset);
    // Serialize message field [speed_z]
    bufferOffset = _serializer.int16(obj.speed_z, buffer, bufferOffset);
    // Serialize message field [odom_x]
    bufferOffset = _serializer.float32(obj.odom_x, buffer, bufferOffset);
    // Serialize message field [odom_y]
    bufferOffset = _serializer.float32(obj.odom_y, buffer, bufferOffset);
    // Serialize message field [gyro_full]
    bufferOffset = _serializer.float32(obj.gyro_full, buffer, bufferOffset);
    // Serialize message field [target_speed_x]
    bufferOffset = _serializer.int16(obj.target_speed_x, buffer, bufferOffset);
    // Serialize message field [target_speed_y]
    bufferOffset = _serializer.int16(obj.target_speed_y, buffer, bufferOffset);
    // Serialize message field [target_speed_z]
    bufferOffset = _serializer.int16(obj.target_speed_z, buffer, bufferOffset);
    // Serialize message field [laser]
    bufferOffset = _serializer.float32(obj.laser, buffer, bufferOffset);
    // Serialize message field [laser_hpf]
    bufferOffset = _serializer.float32(obj.laser_hpf, buffer, bufferOffset);
    // Serialize message field [command_type]
    bufferOffset = _serializer.int8(obj.command_type, buffer, bufferOffset);
    // Serialize message field [m_ctr]
    bufferOffset = _serializer.int16(obj.m_ctr, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.float32(obj.time_stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type surface_to_laptop
    let len;
    let data = new surface_to_laptop(null);
    // Deserialize message field [speed_x]
    data.speed_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_y]
    data.speed_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_z]
    data.speed_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [odom_x]
    data.odom_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_y]
    data.odom_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_full]
    data.gyro_full = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_speed_x]
    data.target_speed_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_speed_y]
    data.target_speed_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_speed_z]
    data.target_speed_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [laser]
    data.laser = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laser_hpf]
    data.laser_hpf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [command_type]
    data.command_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [m_ctr]
    data.m_ctr = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_abu/surface_to_laptop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b07eb02f2a67188d7d9858575aca1a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 speed_x
    int16 speed_y
    int16 speed_z
    
    float32 odom_x
    float32 odom_y
    float32 gyro_full
    
    int16 target_speed_x
    int16 target_speed_y
    int16 target_speed_z
    
    float32 laser
    float32 laser_hpf
    
    int8 command_type
    int16 m_ctr
    
    float32 time_stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new surface_to_laptop(null);
    if (msg.speed_x !== undefined) {
      resolved.speed_x = msg.speed_x;
    }
    else {
      resolved.speed_x = 0
    }

    if (msg.speed_y !== undefined) {
      resolved.speed_y = msg.speed_y;
    }
    else {
      resolved.speed_y = 0
    }

    if (msg.speed_z !== undefined) {
      resolved.speed_z = msg.speed_z;
    }
    else {
      resolved.speed_z = 0
    }

    if (msg.odom_x !== undefined) {
      resolved.odom_x = msg.odom_x;
    }
    else {
      resolved.odom_x = 0.0
    }

    if (msg.odom_y !== undefined) {
      resolved.odom_y = msg.odom_y;
    }
    else {
      resolved.odom_y = 0.0
    }

    if (msg.gyro_full !== undefined) {
      resolved.gyro_full = msg.gyro_full;
    }
    else {
      resolved.gyro_full = 0.0
    }

    if (msg.target_speed_x !== undefined) {
      resolved.target_speed_x = msg.target_speed_x;
    }
    else {
      resolved.target_speed_x = 0
    }

    if (msg.target_speed_y !== undefined) {
      resolved.target_speed_y = msg.target_speed_y;
    }
    else {
      resolved.target_speed_y = 0
    }

    if (msg.target_speed_z !== undefined) {
      resolved.target_speed_z = msg.target_speed_z;
    }
    else {
      resolved.target_speed_z = 0
    }

    if (msg.laser !== undefined) {
      resolved.laser = msg.laser;
    }
    else {
      resolved.laser = 0.0
    }

    if (msg.laser_hpf !== undefined) {
      resolved.laser_hpf = msg.laser_hpf;
    }
    else {
      resolved.laser_hpf = 0.0
    }

    if (msg.command_type !== undefined) {
      resolved.command_type = msg.command_type;
    }
    else {
      resolved.command_type = 0
    }

    if (msg.m_ctr !== undefined) {
      resolved.m_ctr = msg.m_ctr;
    }
    else {
      resolved.m_ctr = 0
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0.0
    }

    return resolved;
    }
};

module.exports = surface_to_laptop;
