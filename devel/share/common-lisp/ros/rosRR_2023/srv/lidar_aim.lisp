; Auto-generated. Do not edit!


(cl:in-package rosRR_2023-srv)


;//! \htmlinclude lidar_aim-request.msg.html

(cl:defclass <lidar_aim-request> (roslisp-msg-protocol:ros-message)
  ((lower_dist_th
    :reader lower_dist_th
    :initarg :lower_dist_th
    :type cl:float
    :initform 0.0)
   (upper_dist_th
    :reader upper_dist_th
    :initarg :upper_dist_th
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lidar_aim-request (<lidar_aim-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_aim-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_aim-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosRR_2023-srv:<lidar_aim-request> is deprecated: use rosRR_2023-srv:lidar_aim-request instead.")))

(cl:ensure-generic-function 'lower_dist_th-val :lambda-list '(m))
(cl:defmethod lower_dist_th-val ((m <lidar_aim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:lower_dist_th-val is deprecated.  Use rosRR_2023-srv:lower_dist_th instead.")
  (lower_dist_th m))

(cl:ensure-generic-function 'upper_dist_th-val :lambda-list '(m))
(cl:defmethod upper_dist_th-val ((m <lidar_aim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:upper_dist_th-val is deprecated.  Use rosRR_2023-srv:upper_dist_th instead.")
  (upper_dist_th m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <lidar_aim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:type-val is deprecated.  Use rosRR_2023-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_aim-request>) ostream)
  "Serializes a message object of type '<lidar_aim-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lower_dist_th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'upper_dist_th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_aim-request>) istream)
  "Deserializes a message object of type '<lidar_aim-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower_dist_th) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_dist_th) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_aim-request>)))
  "Returns string type for a service object of type '<lidar_aim-request>"
  "rosRR_2023/lidar_aimRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_aim-request)))
  "Returns string type for a service object of type 'lidar_aim-request"
  "rosRR_2023/lidar_aimRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_aim-request>)))
  "Returns md5sum for a message object of type '<lidar_aim-request>"
  "4cdded07bae4fc4aff836f568bed0239")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_aim-request)))
  "Returns md5sum for a message object of type 'lidar_aim-request"
  "4cdded07bae4fc4aff836f568bed0239")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_aim-request>)))
  "Returns full string definition for message of type '<lidar_aim-request>"
  (cl:format cl:nil "float32 lower_dist_th~%float32 upper_dist_th~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_aim-request)))
  "Returns full string definition for message of type 'lidar_aim-request"
  (cl:format cl:nil "float32 lower_dist_th~%float32 upper_dist_th~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_aim-request>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_aim-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_aim-request
    (cl:cons ':lower_dist_th (lower_dist_th msg))
    (cl:cons ':upper_dist_th (upper_dist_th msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude lidar_aim-response.msg.html

(cl:defclass <lidar_aim-response> (roslisp-msg-protocol:ros-message)
  ((angle_error
    :reader angle_error
    :initarg :angle_error
    :type cl:float
    :initform 0.0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass lidar_aim-response (<lidar_aim-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_aim-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_aim-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosRR_2023-srv:<lidar_aim-response> is deprecated: use rosRR_2023-srv:lidar_aim-response instead.")))

(cl:ensure-generic-function 'angle_error-val :lambda-list '(m))
(cl:defmethod angle_error-val ((m <lidar_aim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:angle_error-val is deprecated.  Use rosRR_2023-srv:angle_error instead.")
  (angle_error m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <lidar_aim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:dist-val is deprecated.  Use rosRR_2023-srv:dist instead.")
  (dist m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <lidar_aim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosRR_2023-srv:success-val is deprecated.  Use rosRR_2023-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_aim-response>) ostream)
  "Serializes a message object of type '<lidar_aim-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_aim-response>) istream)
  "Deserializes a message object of type '<lidar_aim-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_aim-response>)))
  "Returns string type for a service object of type '<lidar_aim-response>"
  "rosRR_2023/lidar_aimResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_aim-response)))
  "Returns string type for a service object of type 'lidar_aim-response"
  "rosRR_2023/lidar_aimResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_aim-response>)))
  "Returns md5sum for a message object of type '<lidar_aim-response>"
  "4cdded07bae4fc4aff836f568bed0239")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_aim-response)))
  "Returns md5sum for a message object of type 'lidar_aim-response"
  "4cdded07bae4fc4aff836f568bed0239")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_aim-response>)))
  "Returns full string definition for message of type '<lidar_aim-response>"
  (cl:format cl:nil "float32 angle_error~%float32 dist~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_aim-response)))
  "Returns full string definition for message of type 'lidar_aim-response"
  (cl:format cl:nil "float32 angle_error~%float32 dist~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_aim-response>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_aim-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_aim-response
    (cl:cons ':angle_error (angle_error msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_aim)))
  'lidar_aim-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_aim)))
  'lidar_aim-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_aim)))
  "Returns string type for a service object of type '<lidar_aim>"
  "rosRR_2023/lidar_aim")