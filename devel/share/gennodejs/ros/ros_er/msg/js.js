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

class js {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button = null;
      this.left_js_x = null;
      this.left_js_y = null;
      this.right_js_x = null;
      this.right_js_y = null;
      this.kiri_kanan = null;
      this.atas_bawah = null;
      this.l2 = null;
      this.r2 = null;
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('button')) {
        this.button = initObj.button
      }
      else {
        this.button = 0;
      }
      if (initObj.hasOwnProperty('left_js_x')) {
        this.left_js_x = initObj.left_js_x
      }
      else {
        this.left_js_x = 0;
      }
      if (initObj.hasOwnProperty('left_js_y')) {
        this.left_js_y = initObj.left_js_y
      }
      else {
        this.left_js_y = 0;
      }
      if (initObj.hasOwnProperty('right_js_x')) {
        this.right_js_x = initObj.right_js_x
      }
      else {
        this.right_js_x = 0;
      }
      if (initObj.hasOwnProperty('right_js_y')) {
        this.right_js_y = initObj.right_js_y
      }
      else {
        this.right_js_y = 0;
      }
      if (initObj.hasOwnProperty('kiri_kanan')) {
        this.kiri_kanan = initObj.kiri_kanan
      }
      else {
        this.kiri_kanan = 0;
      }
      if (initObj.hasOwnProperty('atas_bawah')) {
        this.atas_bawah = initObj.atas_bawah
      }
      else {
        this.atas_bawah = 0;
      }
      if (initObj.hasOwnProperty('l2')) {
        this.l2 = initObj.l2
      }
      else {
        this.l2 = 0;
      }
      if (initObj.hasOwnProperty('r2')) {
        this.r2 = initObj.r2
      }
      else {
        this.r2 = 0;
      }
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type js
    // Serialize message field [button]
    bufferOffset = _serializer.uint32(obj.button, buffer, bufferOffset);
    // Serialize message field [left_js_x]
    bufferOffset = _serializer.int32(obj.left_js_x, buffer, bufferOffset);
    // Serialize message field [left_js_y]
    bufferOffset = _serializer.int32(obj.left_js_y, buffer, bufferOffset);
    // Serialize message field [right_js_x]
    bufferOffset = _serializer.uint16(obj.right_js_x, buffer, bufferOffset);
    // Serialize message field [right_js_y]
    bufferOffset = _serializer.uint16(obj.right_js_y, buffer, bufferOffset);
    // Serialize message field [kiri_kanan]
    bufferOffset = _serializer.int16(obj.kiri_kanan, buffer, bufferOffset);
    // Serialize message field [atas_bawah]
    bufferOffset = _serializer.int16(obj.atas_bawah, buffer, bufferOffset);
    // Serialize message field [l2]
    bufferOffset = _serializer.int32(obj.l2, buffer, bufferOffset);
    // Serialize message field [r2]
    bufferOffset = _serializer.int32(obj.r2, buffer, bufferOffset);
    // Serialize message field [event]
    bufferOffset = _serializer.uint8(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type js
    let len;
    let data = new js(null);
    // Deserialize message field [button]
    data.button = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [left_js_x]
    data.left_js_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_js_y]
    data.left_js_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_js_x]
    data.right_js_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [right_js_y]
    data.right_js_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [kiri_kanan]
    data.kiri_kanan = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [atas_bawah]
    data.atas_bawah = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [l2]
    data.l2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [r2]
    data.r2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [event]
    data.event = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_er/js';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27307fc51b0d7a911c746c6fbd3def00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 button
    int32 left_js_x
    int32 left_js_y
    uint16 right_js_x
    uint16 right_js_y
    int16 kiri_kanan
    int16 atas_bawah
    int32 l2
    int32 r2
    uint8 event
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new js(null);
    if (msg.button !== undefined) {
      resolved.button = msg.button;
    }
    else {
      resolved.button = 0
    }

    if (msg.left_js_x !== undefined) {
      resolved.left_js_x = msg.left_js_x;
    }
    else {
      resolved.left_js_x = 0
    }

    if (msg.left_js_y !== undefined) {
      resolved.left_js_y = msg.left_js_y;
    }
    else {
      resolved.left_js_y = 0
    }

    if (msg.right_js_x !== undefined) {
      resolved.right_js_x = msg.right_js_x;
    }
    else {
      resolved.right_js_x = 0
    }

    if (msg.right_js_y !== undefined) {
      resolved.right_js_y = msg.right_js_y;
    }
    else {
      resolved.right_js_y = 0
    }

    if (msg.kiri_kanan !== undefined) {
      resolved.kiri_kanan = msg.kiri_kanan;
    }
    else {
      resolved.kiri_kanan = 0
    }

    if (msg.atas_bawah !== undefined) {
      resolved.atas_bawah = msg.atas_bawah;
    }
    else {
      resolved.atas_bawah = 0
    }

    if (msg.l2 !== undefined) {
      resolved.l2 = msg.l2;
    }
    else {
      resolved.l2 = 0
    }

    if (msg.r2 !== undefined) {
      resolved.r2 = msg.r2;
    }
    else {
      resolved.r2 = 0
    }

    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    return resolved;
    }
};

module.exports = js;
