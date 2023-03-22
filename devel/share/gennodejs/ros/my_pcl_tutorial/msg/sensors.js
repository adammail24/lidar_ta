// Auto-generated. Do not edit!

// (in-package my_pcl_tutorial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class sensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global_pos_x = null;
      this.global_pos_y = null;
      this.enc_carry = null;
      this.slider = null;
      this.rot = null;
      this.rot_deg = null;
      this.engsel = null;
      this.gyro = null;
      this.gyro_full = null;
      this.capit = null;
      this.sick_kiri = null;
      this.sick_depan = null;
      this.sick_belakang = null;
      this.reset = null;
      this.stm_reseted = null;
      this.tilt_kiri = null;
      this.tilt_kanan = null;
    }
    else {
      if (initObj.hasOwnProperty('global_pos_x')) {
        this.global_pos_x = initObj.global_pos_x
      }
      else {
        this.global_pos_x = 0;
      }
      if (initObj.hasOwnProperty('global_pos_y')) {
        this.global_pos_y = initObj.global_pos_y
      }
      else {
        this.global_pos_y = 0;
      }
      if (initObj.hasOwnProperty('enc_carry')) {
        this.enc_carry = initObj.enc_carry
      }
      else {
        this.enc_carry = 0;
      }
      if (initObj.hasOwnProperty('slider')) {
        this.slider = initObj.slider
      }
      else {
        this.slider = 0;
      }
      if (initObj.hasOwnProperty('rot')) {
        this.rot = initObj.rot
      }
      else {
        this.rot = 0;
      }
      if (initObj.hasOwnProperty('rot_deg')) {
        this.rot_deg = initObj.rot_deg
      }
      else {
        this.rot_deg = 0.0;
      }
      if (initObj.hasOwnProperty('engsel')) {
        this.engsel = initObj.engsel
      }
      else {
        this.engsel = 0;
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_full')) {
        this.gyro_full = initObj.gyro_full
      }
      else {
        this.gyro_full = 0.0;
      }
      if (initObj.hasOwnProperty('capit')) {
        this.capit = initObj.capit
      }
      else {
        this.capit = 0;
      }
      if (initObj.hasOwnProperty('sick_kiri')) {
        this.sick_kiri = initObj.sick_kiri
      }
      else {
        this.sick_kiri = 0.0;
      }
      if (initObj.hasOwnProperty('sick_depan')) {
        this.sick_depan = initObj.sick_depan
      }
      else {
        this.sick_depan = 0.0;
      }
      if (initObj.hasOwnProperty('sick_belakang')) {
        this.sick_belakang = initObj.sick_belakang
      }
      else {
        this.sick_belakang = 0.0;
      }
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = 0;
      }
      if (initObj.hasOwnProperty('stm_reseted')) {
        this.stm_reseted = initObj.stm_reseted
      }
      else {
        this.stm_reseted = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sensors
    // Serialize message field [global_pos_x]
    bufferOffset = _serializer.int32(obj.global_pos_x, buffer, bufferOffset);
    // Serialize message field [global_pos_y]
    bufferOffset = _serializer.int32(obj.global_pos_y, buffer, bufferOffset);
    // Serialize message field [enc_carry]
    bufferOffset = _serializer.int16(obj.enc_carry, buffer, bufferOffset);
    // Serialize message field [slider]
    bufferOffset = _serializer.int16(obj.slider, buffer, bufferOffset);
    // Serialize message field [rot]
    bufferOffset = _serializer.int32(obj.rot, buffer, bufferOffset);
    // Serialize message field [rot_deg]
    bufferOffset = _serializer.float32(obj.rot_deg, buffer, bufferOffset);
    // Serialize message field [engsel]
    bufferOffset = _serializer.int32(obj.engsel, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = _serializer.float32(obj.gyro, buffer, bufferOffset);
    // Serialize message field [gyro_full]
    bufferOffset = _serializer.float32(obj.gyro_full, buffer, bufferOffset);
    // Serialize message field [capit]
    bufferOffset = _serializer.int16(obj.capit, buffer, bufferOffset);
    // Serialize message field [sick_kiri]
    bufferOffset = _serializer.float32(obj.sick_kiri, buffer, bufferOffset);
    // Serialize message field [sick_depan]
    bufferOffset = _serializer.float32(obj.sick_depan, buffer, bufferOffset);
    // Serialize message field [sick_belakang]
    bufferOffset = _serializer.float32(obj.sick_belakang, buffer, bufferOffset);
    // Serialize message field [reset]
    bufferOffset = _serializer.uint8(obj.reset, buffer, bufferOffset);
    // Serialize message field [stm_reseted]
    bufferOffset = _serializer.uint8(obj.stm_reseted, buffer, bufferOffset);
    // Serialize message field [tilt_kiri]
    bufferOffset = _serializer.int8(obj.tilt_kiri, buffer, bufferOffset);
    // Serialize message field [tilt_kanan]
    bufferOffset = _serializer.int8(obj.tilt_kanan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensors
    let len;
    let data = new sensors(null);
    // Deserialize message field [global_pos_x]
    data.global_pos_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [global_pos_y]
    data.global_pos_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enc_carry]
    data.enc_carry = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [slider]
    data.slider = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rot]
    data.rot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rot_deg]
    data.rot_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engsel]
    data.engsel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_full]
    data.gyro_full = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capit]
    data.capit = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sick_kiri]
    data.sick_kiri = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sick_depan]
    data.sick_depan = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sick_belakang]
    data.sick_belakang = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reset]
    data.reset = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stm_reseted]
    data.stm_reseted = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tilt_kiri]
    data.tilt_kiri = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tilt_kanan]
    data.tilt_kanan = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_pcl_tutorial/sensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aee75a1390f2e5984fa9af15d4f63f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 global_pos_x
    int32 global_pos_y 
    # uint8 global_pos_x
    # uint8 global_pos_y
    int16 enc_carry
    int16 slider
    int32 rot
    float32 rot_deg
    int32 engsel
    float32 gyro
    float32 gyro_full
    int16 capit
    float32 sick_kiri
    float32 sick_depan
    float32 sick_belakang
    
    uint8 reset
    uint8 stm_reseted
    
    int8 tilt_kiri
    int8 tilt_kanan
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensors(null);
    if (msg.global_pos_x !== undefined) {
      resolved.global_pos_x = msg.global_pos_x;
    }
    else {
      resolved.global_pos_x = 0
    }

    if (msg.global_pos_y !== undefined) {
      resolved.global_pos_y = msg.global_pos_y;
    }
    else {
      resolved.global_pos_y = 0
    }

    if (msg.enc_carry !== undefined) {
      resolved.enc_carry = msg.enc_carry;
    }
    else {
      resolved.enc_carry = 0
    }

    if (msg.slider !== undefined) {
      resolved.slider = msg.slider;
    }
    else {
      resolved.slider = 0
    }

    if (msg.rot !== undefined) {
      resolved.rot = msg.rot;
    }
    else {
      resolved.rot = 0
    }

    if (msg.rot_deg !== undefined) {
      resolved.rot_deg = msg.rot_deg;
    }
    else {
      resolved.rot_deg = 0.0
    }

    if (msg.engsel !== undefined) {
      resolved.engsel = msg.engsel;
    }
    else {
      resolved.engsel = 0
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = msg.gyro;
    }
    else {
      resolved.gyro = 0.0
    }

    if (msg.gyro_full !== undefined) {
      resolved.gyro_full = msg.gyro_full;
    }
    else {
      resolved.gyro_full = 0.0
    }

    if (msg.capit !== undefined) {
      resolved.capit = msg.capit;
    }
    else {
      resolved.capit = 0
    }

    if (msg.sick_kiri !== undefined) {
      resolved.sick_kiri = msg.sick_kiri;
    }
    else {
      resolved.sick_kiri = 0.0
    }

    if (msg.sick_depan !== undefined) {
      resolved.sick_depan = msg.sick_depan;
    }
    else {
      resolved.sick_depan = 0.0
    }

    if (msg.sick_belakang !== undefined) {
      resolved.sick_belakang = msg.sick_belakang;
    }
    else {
      resolved.sick_belakang = 0.0
    }

    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = 0
    }

    if (msg.stm_reseted !== undefined) {
      resolved.stm_reseted = msg.stm_reseted;
    }
    else {
      resolved.stm_reseted = 0
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

    return resolved;
    }
};

module.exports = sensors;
