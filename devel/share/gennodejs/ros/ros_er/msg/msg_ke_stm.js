// Auto-generated. Do not edit!

// (in-package ros_er.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg_ke_stm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_x = null;
      this.speed_y = null;
      this.speed_z = null;
      this.target_slider = null;
      this.speed_slider = null;
      this.target_rot = null;
      this.speed_rot = null;
      this.target_capit = null;
      this.speed_capit = null;
      this.target_engsel = null;
      this.bit_pneumatik = null;
      this.status_robot = null;
      this.reset_enc = null;
      this.reset_gpos_x = null;
      this.reset_gpos_y = null;
      this.reset_gyro_val = null;
      this.buzzer = null;
      this.pos_head = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.tilt_kiri = null;
      this.tilt_kanan = null;
      this.target_carry = null;
      this.speed_carry = null;
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
      if (initObj.hasOwnProperty('target_slider')) {
        this.target_slider = initObj.target_slider
      }
      else {
        this.target_slider = 0;
      }
      if (initObj.hasOwnProperty('speed_slider')) {
        this.speed_slider = initObj.speed_slider
      }
      else {
        this.speed_slider = 0;
      }
      if (initObj.hasOwnProperty('target_rot')) {
        this.target_rot = initObj.target_rot
      }
      else {
        this.target_rot = 0;
      }
      if (initObj.hasOwnProperty('speed_rot')) {
        this.speed_rot = initObj.speed_rot
      }
      else {
        this.speed_rot = 0;
      }
      if (initObj.hasOwnProperty('target_capit')) {
        this.target_capit = initObj.target_capit
      }
      else {
        this.target_capit = 0;
      }
      if (initObj.hasOwnProperty('speed_capit')) {
        this.speed_capit = initObj.speed_capit
      }
      else {
        this.speed_capit = 0;
      }
      if (initObj.hasOwnProperty('target_engsel')) {
        this.target_engsel = initObj.target_engsel
      }
      else {
        this.target_engsel = 0;
      }
      if (initObj.hasOwnProperty('bit_pneumatik')) {
        this.bit_pneumatik = initObj.bit_pneumatik
      }
      else {
        this.bit_pneumatik = 0;
      }
      if (initObj.hasOwnProperty('status_robot')) {
        this.status_robot = initObj.status_robot
      }
      else {
        this.status_robot = 0;
      }
      if (initObj.hasOwnProperty('reset_enc')) {
        this.reset_enc = initObj.reset_enc
      }
      else {
        this.reset_enc = 0;
      }
      if (initObj.hasOwnProperty('reset_gpos_x')) {
        this.reset_gpos_x = initObj.reset_gpos_x
      }
      else {
        this.reset_gpos_x = 0;
      }
      if (initObj.hasOwnProperty('reset_gpos_y')) {
        this.reset_gpos_y = initObj.reset_gpos_y
      }
      else {
        this.reset_gpos_y = 0;
      }
      if (initObj.hasOwnProperty('reset_gyro_val')) {
        this.reset_gyro_val = initObj.reset_gyro_val
      }
      else {
        this.reset_gyro_val = 0;
      }
      if (initObj.hasOwnProperty('buzzer')) {
        this.buzzer = initObj.buzzer
      }
      else {
        this.buzzer = 0;
      }
      if (initObj.hasOwnProperty('pos_head')) {
        this.pos_head = initObj.pos_head
      }
      else {
        this.pos_head = 0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0;
      }
      if (initObj.hasOwnProperty('tilt_kiri')) {
        this.tilt_kiri = initObj.tilt_kiri
      }
      else {
        this.tilt_kiri = 0;
      }
      if (initObj.hasOwnProperty('tilt_kanan')) {
        this.tilt_kanan = initObj.tilt_kanan
      }
      else {
        this.tilt_kanan = 0;
      }
      if (initObj.hasOwnProperty('target_carry')) {
        this.target_carry = initObj.target_carry
      }
      else {
        this.target_carry = 0;
      }
      if (initObj.hasOwnProperty('speed_carry')) {
        this.speed_carry = initObj.speed_carry
      }
      else {
        this.speed_carry = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg_ke_stm
    // Serialize message field [speed_x]
    bufferOffset = _serializer.int16(obj.speed_x, buffer, bufferOffset);
    // Serialize message field [speed_y]
    bufferOffset = _serializer.int16(obj.speed_y, buffer, bufferOffset);
    // Serialize message field [speed_z]
    bufferOffset = _serializer.int16(obj.speed_z, buffer, bufferOffset);
    // Serialize message field [target_slider]
    bufferOffset = _serializer.int16(obj.target_slider, buffer, bufferOffset);
    // Serialize message field [speed_slider]
    bufferOffset = _serializer.int16(obj.speed_slider, buffer, bufferOffset);
    // Serialize message field [target_rot]
    bufferOffset = _serializer.int16(obj.target_rot, buffer, bufferOffset);
    // Serialize message field [speed_rot]
    bufferOffset = _serializer.int16(obj.speed_rot, buffer, bufferOffset);
    // Serialize message field [target_capit]
    bufferOffset = _serializer.int16(obj.target_capit, buffer, bufferOffset);
    // Serialize message field [speed_capit]
    bufferOffset = _serializer.int16(obj.speed_capit, buffer, bufferOffset);
    // Serialize message field [target_engsel]
    bufferOffset = _serializer.int16(obj.target_engsel, buffer, bufferOffset);
    // Serialize message field [bit_pneumatik]
    bufferOffset = _serializer.uint8(obj.bit_pneumatik, buffer, bufferOffset);
    // Serialize message field [status_robot]
    bufferOffset = _serializer.uint8(obj.status_robot, buffer, bufferOffset);
    // Serialize message field [reset_enc]
    bufferOffset = _serializer.uint8(obj.reset_enc, buffer, bufferOffset);
    // Serialize message field [reset_gpos_x]
    bufferOffset = _serializer.int16(obj.reset_gpos_x, buffer, bufferOffset);
    // Serialize message field [reset_gpos_y]
    bufferOffset = _serializer.int16(obj.reset_gpos_y, buffer, bufferOffset);
    // Serialize message field [reset_gyro_val]
    bufferOffset = _serializer.int16(obj.reset_gyro_val, buffer, bufferOffset);
    // Serialize message field [buzzer]
    bufferOffset = _serializer.uint8(obj.buzzer, buffer, bufferOffset);
    // Serialize message field [pos_head]
    bufferOffset = _serializer.int32(obj.pos_head, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.int16(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.int16(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.int16(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [tilt_kiri]
    bufferOffset = _serializer.int8(obj.tilt_kiri, buffer, bufferOffset);
    // Serialize message field [tilt_kanan]
    bufferOffset = _serializer.int8(obj.tilt_kanan, buffer, bufferOffset);
    // Serialize message field [target_carry]
    bufferOffset = _serializer.int16(obj.target_carry, buffer, bufferOffset);
    // Serialize message field [speed_carry]
    bufferOffset = _serializer.int16(obj.speed_carry, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg_ke_stm
    let len;
    let data = new msg_ke_stm(null);
    // Deserialize message field [speed_x]
    data.speed_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_y]
    data.speed_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_z]
    data.speed_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_slider]
    data.target_slider = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_slider]
    data.speed_slider = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_rot]
    data.target_rot = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_rot]
    data.speed_rot = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_capit]
    data.target_capit = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_capit]
    data.speed_capit = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [target_engsel]
    data.target_engsel = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bit_pneumatik]
    data.bit_pneumatik = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status_robot]
    data.status_robot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reset_enc]
    data.reset_enc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reset_gpos_x]
    data.reset_gpos_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reset_gpos_y]
    data.reset_gpos_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reset_gyro_val]
    data.reset_gyro_val = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [buzzer]
    data.buzzer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos_head]
    data.pos_head = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [tilt_kiri]
    data.tilt_kiri = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tilt_kanan]
    data.tilt_kanan = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [target_carry]
    data.target_carry = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_carry]
    data.speed_carry = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_er/msg_ke_stm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2633e3a1a163ec7dbfa4502b05291a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 speed_x
    int16 speed_y
    int16 speed_z
    
    int16 target_slider
    int16 speed_slider
    
    int16 target_rot
    int16 speed_rot
    
    int16 target_capit
    int16 speed_capit
    
    int16 target_engsel
    
    uint8 bit_pneumatik 
    
    uint8 status_robot
    
    uint8 reset_enc
    
    int16 reset_gpos_x
    int16 reset_gpos_y
    
    int16 reset_gyro_val
    
    uint8 buzzer
    
    int32 pos_head
    
    int16 acc_x
    int16 acc_y
    int16 acc_z
    
    int8 tilt_kiri
    int8 tilt_kanan
    
    int16 target_carry
    int16 speed_carry
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg_ke_stm(null);
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

    if (msg.target_slider !== undefined) {
      resolved.target_slider = msg.target_slider;
    }
    else {
      resolved.target_slider = 0
    }

    if (msg.speed_slider !== undefined) {
      resolved.speed_slider = msg.speed_slider;
    }
    else {
      resolved.speed_slider = 0
    }

    if (msg.target_rot !== undefined) {
      resolved.target_rot = msg.target_rot;
    }
    else {
      resolved.target_rot = 0
    }

    if (msg.speed_rot !== undefined) {
      resolved.speed_rot = msg.speed_rot;
    }
    else {
      resolved.speed_rot = 0
    }

    if (msg.target_capit !== undefined) {
      resolved.target_capit = msg.target_capit;
    }
    else {
      resolved.target_capit = 0
    }

    if (msg.speed_capit !== undefined) {
      resolved.speed_capit = msg.speed_capit;
    }
    else {
      resolved.speed_capit = 0
    }

    if (msg.target_engsel !== undefined) {
      resolved.target_engsel = msg.target_engsel;
    }
    else {
      resolved.target_engsel = 0
    }

    if (msg.bit_pneumatik !== undefined) {
      resolved.bit_pneumatik = msg.bit_pneumatik;
    }
    else {
      resolved.bit_pneumatik = 0
    }

    if (msg.status_robot !== undefined) {
      resolved.status_robot = msg.status_robot;
    }
    else {
      resolved.status_robot = 0
    }

    if (msg.reset_enc !== undefined) {
      resolved.reset_enc = msg.reset_enc;
    }
    else {
      resolved.reset_enc = 0
    }

    if (msg.reset_gpos_x !== undefined) {
      resolved.reset_gpos_x = msg.reset_gpos_x;
    }
    else {
      resolved.reset_gpos_x = 0
    }

    if (msg.reset_gpos_y !== undefined) {
      resolved.reset_gpos_y = msg.reset_gpos_y;
    }
    else {
      resolved.reset_gpos_y = 0
    }

    if (msg.reset_gyro_val !== undefined) {
      resolved.reset_gyro_val = msg.reset_gyro_val;
    }
    else {
      resolved.reset_gyro_val = 0
    }

    if (msg.buzzer !== undefined) {
      resolved.buzzer = msg.buzzer;
    }
    else {
      resolved.buzzer = 0
    }

    if (msg.pos_head !== undefined) {
      resolved.pos_head = msg.pos_head;
    }
    else {
      resolved.pos_head = 0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0
    }

    if (msg.tilt_kiri !== undefined) {
      resolved.tilt_kiri = msg.tilt_kiri;
    }
    else {
      resolved.tilt_kiri = 0
    }

    if (msg.tilt_kanan !== undefined) {
      resolved.tilt_kanan = msg.tilt_kanan;
    }
    else {
      resolved.tilt_kanan = 0
    }

    if (msg.target_carry !== undefined) {
      resolved.target_carry = msg.target_carry;
    }
    else {
      resolved.target_carry = 0
    }

    if (msg.speed_carry !== undefined) {
      resolved.speed_carry = msg.speed_carry;
    }
    else {
      resolved.speed_carry = 0
    }

    return resolved;
    }
};

module.exports = msg_ke_stm;
