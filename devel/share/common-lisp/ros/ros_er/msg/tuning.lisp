; Auto-generated. Do not edit!


(cl:in-package ros_er-msg)


;//! \htmlinclude tuning.msg.html

(cl:defclass <tuning> (roslisp-msg-protocol:ros-message)
  ((val_int
    :reader val_int
    :initarg :val_int
    :type cl:integer
    :initform 0)
   (val_float
    :reader val_float
    :initarg :val_float
    :type cl:float
    :initform 0.0)
   (counter
    :reader counter
    :initarg :counter
    :type cl:fixnum
    :initform 0)
   (is_float
    :reader is_float
    :initarg :is_float
    :type cl:boolean
    :initform cl:nil)
   (ctr_msg
    :reader ctr_msg
    :initarg :ctr_msg
    :type cl:fixnum
    :initform 0))
)

(cl:defclass tuning (<tuning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tuning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tuning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-msg:<tuning> is deprecated: use ros_er-msg:tuning instead.")))

(cl:ensure-generic-function 'val_int-val :lambda-list '(m))
(cl:defmethod val_int-val ((m <tuning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:val_int-val is deprecated.  Use ros_er-msg:val_int instead.")
  (val_int m))

(cl:ensure-generic-function 'val_float-val :lambda-list '(m))
(cl:defmethod val_float-val ((m <tuning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:val_float-val is deprecated.  Use ros_er-msg:val_float instead.")
  (val_float m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <tuning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:counter-val is deprecated.  Use ros_er-msg:counter instead.")
  (counter m))

(cl:ensure-generic-function 'is_float-val :lambda-list '(m))
(cl:defmethod is_float-val ((m <tuning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:is_float-val is deprecated.  Use ros_er-msg:is_float instead.")
  (is_float m))

(cl:ensure-generic-function 'ctr_msg-val :lambda-list '(m))
(cl:defmethod ctr_msg-val ((m <tuning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:ctr_msg-val is deprecated.  Use ros_er-msg:ctr_msg instead.")
  (ctr_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tuning>) ostream)
  "Serializes a message object of type '<tuning>"
  (cl:let* ((signed (cl:slot-value msg 'val_int)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'val_float))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_float) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctr_msg)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tuning>) istream)
  "Deserializes a message object of type '<tuning>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val_int) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val_float) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'counter) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'is_float) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctr_msg)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tuning>)))
  "Returns string type for a message object of type '<tuning>"
  "ros_er/tuning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tuning)))
  "Returns string type for a message object of type 'tuning"
  "ros_er/tuning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tuning>)))
  "Returns md5sum for a message object of type '<tuning>"
  "258fcfb474f715e8b678ea8d146e1b92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tuning)))
  "Returns md5sum for a message object of type 'tuning"
  "258fcfb474f715e8b678ea8d146e1b92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tuning>)))
  "Returns full string definition for message of type '<tuning>"
  (cl:format cl:nil "int32 val_int~%float32 val_float~%~%int8 counter~%bool is_float~%~%uint8 ctr_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tuning)))
  "Returns full string definition for message of type 'tuning"
  (cl:format cl:nil "int32 val_int~%float32 val_float~%~%int8 counter~%bool is_float~%~%uint8 ctr_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tuning>))
  (cl:+ 0
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tuning>))
  "Converts a ROS message object to a list"
  (cl:list 'tuning
    (cl:cons ':val_int (val_int msg))
    (cl:cons ':val_float (val_float msg))
    (cl:cons ':counter (counter msg))
    (cl:cons ':is_float (is_float msg))
    (cl:cons ':ctr_msg (ctr_msg msg))
))
