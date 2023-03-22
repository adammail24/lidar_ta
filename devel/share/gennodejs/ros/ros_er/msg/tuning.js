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

class tuning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.val_int = null;
      this.val_float = null;
      this.counter = null;
      this.is_float = null;
      this.ctr_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('val_int')) {
        this.val_int = initObj.val_int
      }
      else {
        this.val_int = 0;
      }
      if (initObj.hasOwnProperty('val_float')) {
        this.val_float = initObj.val_float
      }
      else {
        this.val_float = 0.0;
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
      if (initObj.hasOwnProperty('is_float')) {
        this.is_float = initObj.is_float
      }
      else {
        this.is_float = false;
      }
      if (initObj.hasOwnProperty('ctr_msg')) {
        this.ctr_msg = initObj.ctr_msg
      }
      else {
        this.ctr_msg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tuning
    // Serialize message field [val_int]
    bufferOffset = _serializer.int32(obj.val_int, buffer, bufferOffset);
    // Serialize message field [val_float]
    bufferOffset = _serializer.float32(obj.val_float, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = _serializer.int8(obj.counter, buffer, bufferOffset);
    // Serialize message field [is_float]
    bufferOffset = _serializer.bool(obj.is_float, buffer, bufferOffset);
    // Serialize message field [ctr_msg]
    bufferOffset = _serializer.uint8(obj.ctr_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tuning
    let len;
    let data = new tuning(null);
    // Deserialize message field [val_int]
    data.val_int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [val_float]
    data.val_float = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [is_float]
    data.is_float = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ctr_msg]
    data.ctr_msg = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_er/tuning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '258fcfb474f715e8b678ea8d146e1b92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 val_int
    float32 val_float
    
    int8 counter
    bool is_float
    
    uint8 ctr_msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tuning(null);
    if (msg.val_int !== undefined) {
      resolved.val_int = msg.val_int;
    }
    else {
      resolved.val_int = 0
    }

    if (msg.val_float !== undefined) {
      resolved.val_float = msg.val_float;
    }
    else {
      resolved.val_float = 0.0
    }

    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    if (msg.is_float !== undefined) {
      resolved.is_float = msg.is_float;
    }
    else {
      resolved.is_float = false
    }

    if (msg.ctr_msg !== undefined) {
      resolved.ctr_msg = msg.ctr_msg;
    }
    else {
      resolved.ctr_msg = 0
    }

    return resolved;
    }
};

module.exports = tuning;
