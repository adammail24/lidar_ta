// Auto-generated. Do not edit!

// (in-package ros_er.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class commands_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_counter = null;
      this.ask = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_counter')) {
        this.mission_counter = initObj.mission_counter
      }
      else {
        this.mission_counter = 0;
      }
      if (initObj.hasOwnProperty('ask')) {
        this.ask = initObj.ask
      }
      else {
        this.ask = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type commands_srvRequest
    // Serialize message field [mission_counter]
    bufferOffset = _serializer.int8(obj.mission_counter, buffer, bufferOffset);
    // Serialize message field [ask]
    bufferOffset = _serializer.int16(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type commands_srvRequest
    let len;
    let data = new commands_srvRequest(null);
    // Deserialize message field [mission_counter]
    data.mission_counter = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ask]
    data.ask = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_er/commands_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01a849e291c6457a0413eaabe3e816d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 mission_counter
    int16 ask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new commands_srvRequest(null);
    if (msg.mission_counter !== undefined) {
      resolved.mission_counter = msg.mission_counter;
    }
    else {
      resolved.mission_counter = 0
    }

    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = 0
    }

    return resolved;
    }
};

class commands_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg0 = null;
      this.arg1 = null;
      this.arg2 = null;
      this.arg3 = null;
      this.arg4 = null;
      this.arg5 = null;
      this.arg6 = null;
      this.arg7 = null;
      this.arg8 = null;
      this.arg9 = null;
      this.arg10 = null;
      this.arg11 = null;
      this.arg12 = null;
      this.arg13 = null;
      this.arg14 = null;
      this.arg15 = null;
      this.arg16 = null;
      this.arg17 = null;
      this.arg18 = null;
      this.arg19 = null;
      this.arg20 = null;
      this.arg21 = null;
      this.arg22 = null;
      this.arg23 = null;
      this.arg24 = null;
      this.arg25 = null;
    }
    else {
      if (initObj.hasOwnProperty('arg0')) {
        this.arg0 = initObj.arg0
      }
      else {
        this.arg0 = 0;
      }
      if (initObj.hasOwnProperty('arg1')) {
        this.arg1 = initObj.arg1
      }
      else {
        this.arg1 = 0;
      }
      if (initObj.hasOwnProperty('arg2')) {
        this.arg2 = initObj.arg2
      }
      else {
        this.arg2 = 0;
      }
      if (initObj.hasOwnProperty('arg3')) {
        this.arg3 = initObj.arg3
      }
      else {
        this.arg3 = 0;
      }
      if (initObj.hasOwnProperty('arg4')) {
        this.arg4 = initObj.arg4
      }
      else {
        this.arg4 = 0;
      }
      if (initObj.hasOwnProperty('arg5')) {
        this.arg5 = initObj.arg5
      }
      else {
        this.arg5 = 0;
      }
      if (initObj.hasOwnProperty('arg6')) {
        this.arg6 = initObj.arg6
      }
      else {
        this.arg6 = 0;
      }
      if (initObj.hasOwnProperty('arg7')) {
        this.arg7 = initObj.arg7
      }
      else {
        this.arg7 = 0;
      }
      if (initObj.hasOwnProperty('arg8')) {
        this.arg8 = initObj.arg8
      }
      else {
        this.arg8 = 0;
      }
      if (initObj.hasOwnProperty('arg9')) {
        this.arg9 = initObj.arg9
      }
      else {
        this.arg9 = 0;
      }
      if (initObj.hasOwnProperty('arg10')) {
        this.arg10 = initObj.arg10
      }
      else {
        this.arg10 = 0;
      }
      if (initObj.hasOwnProperty('arg11')) {
        this.arg11 = initObj.arg11
      }
      else {
        this.arg11 = 0;
      }
      if (initObj.hasOwnProperty('arg12')) {
        this.arg12 = initObj.arg12
      }
      else {
        this.arg12 = 0;
      }
      if (initObj.hasOwnProperty('arg13')) {
        this.arg13 = initObj.arg13
      }
      else {
        this.arg13 = 0;
      }
      if (initObj.hasOwnProperty('arg14')) {
        this.arg14 = initObj.arg14
      }
      else {
        this.arg14 = 0;
      }
      if (initObj.hasOwnProperty('arg15')) {
        this.arg15 = initObj.arg15
      }
      else {
        this.arg15 = 0;
      }
      if (initObj.hasOwnProperty('arg16')) {
        this.arg16 = initObj.arg16
      }
      else {
        this.arg16 = 0;
      }
      if (initObj.hasOwnProperty('arg17')) {
        this.arg17 = initObj.arg17
      }
      else {
        this.arg17 = 0;
      }
      if (initObj.hasOwnProperty('arg18')) {
        this.arg18 = initObj.arg18
      }
      else {
        this.arg18 = 0;
      }
      if (initObj.hasOwnProperty('arg19')) {
        this.arg19 = initObj.arg19
      }
      else {
        this.arg19 = 0;
      }
      if (initObj.hasOwnProperty('arg20')) {
        this.arg20 = initObj.arg20
      }
      else {
        this.arg20 = 0;
      }
      if (initObj.hasOwnProperty('arg21')) {
        this.arg21 = initObj.arg21
      }
      else {
        this.arg21 = 0;
      }
      if (initObj.hasOwnProperty('arg22')) {
        this.arg22 = initObj.arg22
      }
      else {
        this.arg22 = 0;
      }
      if (initObj.hasOwnProperty('arg23')) {
        this.arg23 = initObj.arg23
      }
      else {
        this.arg23 = 0;
      }
      if (initObj.hasOwnProperty('arg24')) {
        this.arg24 = initObj.arg24
      }
      else {
        this.arg24 = 0;
      }
      if (initObj.hasOwnProperty('arg25')) {
        this.arg25 = initObj.arg25
      }
      else {
        this.arg25 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type commands_srvResponse
    // Serialize message field [arg0]
    bufferOffset = _serializer.int32(obj.arg0, buffer, bufferOffset);
    // Serialize message field [arg1]
    bufferOffset = _serializer.int32(obj.arg1, buffer, bufferOffset);
    // Serialize message field [arg2]
    bufferOffset = _serializer.int32(obj.arg2, buffer, bufferOffset);
    // Serialize message field [arg3]
    bufferOffset = _serializer.int32(obj.arg3, buffer, bufferOffset);
    // Serialize message field [arg4]
    bufferOffset = _serializer.int32(obj.arg4, buffer, bufferOffset);
    // Serialize message field [arg5]
    bufferOffset = _serializer.int32(obj.arg5, buffer, bufferOffset);
    // Serialize message field [arg6]
    bufferOffset = _serializer.int32(obj.arg6, buffer, bufferOffset);
    // Serialize message field [arg7]
    bufferOffset = _serializer.int32(obj.arg7, buffer, bufferOffset);
    // Serialize message field [arg8]
    bufferOffset = _serializer.int32(obj.arg8, buffer, bufferOffset);
    // Serialize message field [arg9]
    bufferOffset = _serializer.int32(obj.arg9, buffer, bufferOffset);
    // Serialize message field [arg10]
    bufferOffset = _serializer.int32(obj.arg10, buffer, bufferOffset);
    // Serialize message field [arg11]
    bufferOffset = _serializer.int32(obj.arg11, buffer, bufferOffset);
    // Serialize message field [arg12]
    bufferOffset = _serializer.int32(obj.arg12, buffer, bufferOffset);
    // Serialize message field [arg13]
    bufferOffset = _serializer.int32(obj.arg13, buffer, bufferOffset);
    // Serialize message field [arg14]
    bufferOffset = _serializer.int32(obj.arg14, buffer, bufferOffset);
    // Serialize message field [arg15]
    bufferOffset = _serializer.int32(obj.arg15, buffer, bufferOffset);
    // Serialize message field [arg16]
    bufferOffset = _serializer.int32(obj.arg16, buffer, bufferOffset);
    // Serialize message field [arg17]
    bufferOffset = _serializer.int32(obj.arg17, buffer, bufferOffset);
    // Serialize message field [arg18]
    bufferOffset = _serializer.int32(obj.arg18, buffer, bufferOffset);
    // Serialize message field [arg19]
    bufferOffset = _serializer.int32(obj.arg19, buffer, bufferOffset);
    // Serialize message field [arg20]
    bufferOffset = _serializer.int32(obj.arg20, buffer, bufferOffset);
    // Serialize message field [arg21]
    bufferOffset = _serializer.int32(obj.arg21, buffer, bufferOffset);
    // Serialize message field [arg22]
    bufferOffset = _serializer.int32(obj.arg22, buffer, bufferOffset);
    // Serialize message field [arg23]
    bufferOffset = _serializer.int32(obj.arg23, buffer, bufferOffset);
    // Serialize message field [arg24]
    bufferOffset = _serializer.int32(obj.arg24, buffer, bufferOffset);
    // Serialize message field [arg25]
    bufferOffset = _serializer.int32(obj.arg25, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type commands_srvResponse
    let len;
    let data = new commands_srvResponse(null);
    // Deserialize message field [arg0]
    data.arg0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg1]
    data.arg1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg2]
    data.arg2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg3]
    data.arg3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg4]
    data.arg4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg5]
    data.arg5 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg6]
    data.arg6 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg7]
    data.arg7 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg8]
    data.arg8 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg9]
    data.arg9 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg10]
    data.arg10 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg11]
    data.arg11 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg12]
    data.arg12 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg13]
    data.arg13 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg14]
    data.arg14 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg15]
    data.arg15 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg16]
    data.arg16 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg17]
    data.arg17 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg18]
    data.arg18 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg19]
    data.arg19 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg20]
    data.arg20 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg21]
    data.arg21 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg22]
    data.arg22 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg23]
    data.arg23 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg24]
    data.arg24 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arg25]
    data.arg25 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_er/commands_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a06f282c5865fe19b3c0085420e8073';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 arg0
    int32 arg1
    int32 arg2
    int32 arg3
    int32 arg4
    int32 arg5
    int32 arg6
    int32 arg7
    int32 arg8
    int32 arg9
    int32 arg10
    int32 arg11
    int32 arg12
    int32 arg13
    int32 arg14
    int32 arg15
    int32 arg16
    int32 arg17
    int32 arg18
    int32 arg19
    int32 arg20
    int32 arg21
    int32 arg22
    int32 arg23
    int32 arg24
    int32 arg25
    #int32[] args
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new commands_srvResponse(null);
    if (msg.arg0 !== undefined) {
      resolved.arg0 = msg.arg0;
    }
    else {
      resolved.arg0 = 0
    }

    if (msg.arg1 !== undefined) {
      resolved.arg1 = msg.arg1;
    }
    else {
      resolved.arg1 = 0
    }

    if (msg.arg2 !== undefined) {
      resolved.arg2 = msg.arg2;
    }
    else {
      resolved.arg2 = 0
    }

    if (msg.arg3 !== undefined) {
      resolved.arg3 = msg.arg3;
    }
    else {
      resolved.arg3 = 0
    }

    if (msg.arg4 !== undefined) {
      resolved.arg4 = msg.arg4;
    }
    else {
      resolved.arg4 = 0
    }

    if (msg.arg5 !== undefined) {
      resolved.arg5 = msg.arg5;
    }
    else {
      resolved.arg5 = 0
    }

    if (msg.arg6 !== undefined) {
      resolved.arg6 = msg.arg6;
    }
    else {
      resolved.arg6 = 0
    }

    if (msg.arg7 !== undefined) {
      resolved.arg7 = msg.arg7;
    }
    else {
      resolved.arg7 = 0
    }

    if (msg.arg8 !== undefined) {
      resolved.arg8 = msg.arg8;
    }
    else {
      resolved.arg8 = 0
    }

    if (msg.arg9 !== undefined) {
      resolved.arg9 = msg.arg9;
    }
    else {
      resolved.arg9 = 0
    }

    if (msg.arg10 !== undefined) {
      resolved.arg10 = msg.arg10;
    }
    else {
      resolved.arg10 = 0
    }

    if (msg.arg11 !== undefined) {
      resolved.arg11 = msg.arg11;
    }
    else {
      resolved.arg11 = 0
    }

    if (msg.arg12 !== undefined) {
      resolved.arg12 = msg.arg12;
    }
    else {
      resolved.arg12 = 0
    }

    if (msg.arg13 !== undefined) {
      resolved.arg13 = msg.arg13;
    }
    else {
      resolved.arg13 = 0
    }

    if (msg.arg14 !== undefined) {
      resolved.arg14 = msg.arg14;
    }
    else {
      resolved.arg14 = 0
    }

    if (msg.arg15 !== undefined) {
      resolved.arg15 = msg.arg15;
    }
    else {
      resolved.arg15 = 0
    }

    if (msg.arg16 !== undefined) {
      resolved.arg16 = msg.arg16;
    }
    else {
      resolved.arg16 = 0
    }

    if (msg.arg17 !== undefined) {
      resolved.arg17 = msg.arg17;
    }
    else {
      resolved.arg17 = 0
    }

    if (msg.arg18 !== undefined) {
      resolved.arg18 = msg.arg18;
    }
    else {
      resolved.arg18 = 0
    }

    if (msg.arg19 !== undefined) {
      resolved.arg19 = msg.arg19;
    }
    else {
      resolved.arg19 = 0
    }

    if (msg.arg20 !== undefined) {
      resolved.arg20 = msg.arg20;
    }
    else {
      resolved.arg20 = 0
    }

    if (msg.arg21 !== undefined) {
      resolved.arg21 = msg.arg21;
    }
    else {
      resolved.arg21 = 0
    }

    if (msg.arg22 !== undefined) {
      resolved.arg22 = msg.arg22;
    }
    else {
      resolved.arg22 = 0
    }

    if (msg.arg23 !== undefined) {
      resolved.arg23 = msg.arg23;
    }
    else {
      resolved.arg23 = 0
    }

    if (msg.arg24 !== undefined) {
      resolved.arg24 = msg.arg24;
    }
    else {
      resolved.arg24 = 0
    }

    if (msg.arg25 !== undefined) {
      resolved.arg25 = msg.arg25;
    }
    else {
      resolved.arg25 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: commands_srvRequest,
  Response: commands_srvResponse,
  md5sum() { return 'e26ed80b052f88197b0c98586e1a7d10'; },
  datatype() { return 'ros_er/commands_srv'; }
};
