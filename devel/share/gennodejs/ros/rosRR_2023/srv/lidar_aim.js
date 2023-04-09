// Auto-generated. Do not edit!

// (in-package rosRR_2023.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class lidar_aimRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lower_dist_th = null;
      this.upper_dist_th = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('lower_dist_th')) {
        this.lower_dist_th = initObj.lower_dist_th
      }
      else {
        this.lower_dist_th = 0.0;
      }
      if (initObj.hasOwnProperty('upper_dist_th')) {
        this.upper_dist_th = initObj.upper_dist_th
      }
      else {
        this.upper_dist_th = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_aimRequest
    // Serialize message field [lower_dist_th]
    bufferOffset = _serializer.float32(obj.lower_dist_th, buffer, bufferOffset);
    // Serialize message field [upper_dist_th]
    bufferOffset = _serializer.float32(obj.upper_dist_th, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_aimRequest
    let len;
    let data = new lidar_aimRequest(null);
    // Deserialize message field [lower_dist_th]
    data.lower_dist_th = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper_dist_th]
    data.upper_dist_th = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosRR_2023/lidar_aimRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc9552891fed8a8e31b6b500bcba7bfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 lower_dist_th
    float32 upper_dist_th
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_aimRequest(null);
    if (msg.lower_dist_th !== undefined) {
      resolved.lower_dist_th = msg.lower_dist_th;
    }
    else {
      resolved.lower_dist_th = 0.0
    }

    if (msg.upper_dist_th !== undefined) {
      resolved.upper_dist_th = msg.upper_dist_th;
    }
    else {
      resolved.upper_dist_th = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

class lidar_aimResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle_error = null;
      this.dist = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('angle_error')) {
        this.angle_error = initObj.angle_error
      }
      else {
        this.angle_error = 0.0;
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lidar_aimResponse
    // Serialize message field [angle_error]
    bufferOffset = _serializer.float32(obj.angle_error, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lidar_aimResponse
    let len;
    let data = new lidar_aimResponse(null);
    // Deserialize message field [angle_error]
    data.angle_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosRR_2023/lidar_aimResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '680e72a3b81ecb0c87017d04f4d213bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 angle_error
    float32 dist
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lidar_aimResponse(null);
    if (msg.angle_error !== undefined) {
      resolved.angle_error = msg.angle_error;
    }
    else {
      resolved.angle_error = 0.0
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: lidar_aimRequest,
  Response: lidar_aimResponse,
  md5sum() { return '4cdded07bae4fc4aff836f568bed0239'; },
  datatype() { return 'rosRR_2023/lidar_aim'; }
};
