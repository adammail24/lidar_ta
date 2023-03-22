; Auto-generated. Do not edit!


(cl:in-package ros_er-srv)


;//! \htmlinclude commands_srv-request.msg.html

(cl:defclass <commands_srv-request> (roslisp-msg-protocol:ros-message)
  ((mission_counter
    :reader mission_counter
    :initarg :mission_counter
    :type cl:fixnum
    :initform 0)
   (ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass commands_srv-request (<commands_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <commands_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'commands_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-srv:<commands_srv-request> is deprecated: use ros_er-srv:commands_srv-request instead.")))

(cl:ensure-generic-function 'mission_counter-val :lambda-list '(m))
(cl:defmethod mission_counter-val ((m <commands_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:mission_counter-val is deprecated.  Use ros_er-srv:mission_counter instead.")
  (mission_counter m))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <commands_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:ask-val is deprecated.  Use ros_er-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <commands_srv-request>) ostream)
  "Serializes a message object of type '<commands_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'mission_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ask)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <commands_srv-request>) istream)
  "Deserializes a message object of type '<commands_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_counter) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ask) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<commands_srv-request>)))
  "Returns string type for a service object of type '<commands_srv-request>"
  "ros_er/commands_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commands_srv-request)))
  "Returns string type for a service object of type 'commands_srv-request"
  "ros_er/commands_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<commands_srv-request>)))
  "Returns md5sum for a message object of type '<commands_srv-request>"
  "e26ed80b052f88197b0c98586e1a7d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'commands_srv-request)))
  "Returns md5sum for a message object of type 'commands_srv-request"
  "e26ed80b052f88197b0c98586e1a7d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<commands_srv-request>)))
  "Returns full string definition for message of type '<commands_srv-request>"
  (cl:format cl:nil "int8 mission_counter~%int16 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'commands_srv-request)))
  "Returns full string definition for message of type 'commands_srv-request"
  (cl:format cl:nil "int8 mission_counter~%int16 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <commands_srv-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <commands_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'commands_srv-request
    (cl:cons ':mission_counter (mission_counter msg))
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude commands_srv-response.msg.html

(cl:defclass <commands_srv-response> (roslisp-msg-protocol:ros-message)
  ((arg0
    :reader arg0
    :initarg :arg0
    :type cl:integer
    :initform 0)
   (arg1
    :reader arg1
    :initarg :arg1
    :type cl:integer
    :initform 0)
   (arg2
    :reader arg2
    :initarg :arg2
    :type cl:integer
    :initform 0)
   (arg3
    :reader arg3
    :initarg :arg3
    :type cl:integer
    :initform 0)
   (arg4
    :reader arg4
    :initarg :arg4
    :type cl:integer
    :initform 0)
   (arg5
    :reader arg5
    :initarg :arg5
    :type cl:integer
    :initform 0)
   (arg6
    :reader arg6
    :initarg :arg6
    :type cl:integer
    :initform 0)
   (arg7
    :reader arg7
    :initarg :arg7
    :type cl:integer
    :initform 0)
   (arg8
    :reader arg8
    :initarg :arg8
    :type cl:integer
    :initform 0)
   (arg9
    :reader arg9
    :initarg :arg9
    :type cl:integer
    :initform 0)
   (arg10
    :reader arg10
    :initarg :arg10
    :type cl:integer
    :initform 0)
   (arg11
    :reader arg11
    :initarg :arg11
    :type cl:integer
    :initform 0)
   (arg12
    :reader arg12
    :initarg :arg12
    :type cl:integer
    :initform 0)
   (arg13
    :reader arg13
    :initarg :arg13
    :type cl:integer
    :initform 0)
   (arg14
    :reader arg14
    :initarg :arg14
    :type cl:integer
    :initform 0)
   (arg15
    :reader arg15
    :initarg :arg15
    :type cl:integer
    :initform 0)
   (arg16
    :reader arg16
    :initarg :arg16
    :type cl:integer
    :initform 0)
   (arg17
    :reader arg17
    :initarg :arg17
    :type cl:integer
    :initform 0)
   (arg18
    :reader arg18
    :initarg :arg18
    :type cl:integer
    :initform 0)
   (arg19
    :reader arg19
    :initarg :arg19
    :type cl:integer
    :initform 0)
   (arg20
    :reader arg20
    :initarg :arg20
    :type cl:integer
    :initform 0)
   (arg21
    :reader arg21
    :initarg :arg21
    :type cl:integer
    :initform 0)
   (arg22
    :reader arg22
    :initarg :arg22
    :type cl:integer
    :initform 0)
   (arg23
    :reader arg23
    :initarg :arg23
    :type cl:integer
    :initform 0)
   (arg24
    :reader arg24
    :initarg :arg24
    :type cl:integer
    :initform 0)
   (arg25
    :reader arg25
    :initarg :arg25
    :type cl:integer
    :initform 0))
)

(cl:defclass commands_srv-response (<commands_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <commands_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'commands_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-srv:<commands_srv-response> is deprecated: use ros_er-srv:commands_srv-response instead.")))

(cl:ensure-generic-function 'arg0-val :lambda-list '(m))
(cl:defmethod arg0-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg0-val is deprecated.  Use ros_er-srv:arg0 instead.")
  (arg0 m))

(cl:ensure-generic-function 'arg1-val :lambda-list '(m))
(cl:defmethod arg1-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg1-val is deprecated.  Use ros_er-srv:arg1 instead.")
  (arg1 m))

(cl:ensure-generic-function 'arg2-val :lambda-list '(m))
(cl:defmethod arg2-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg2-val is deprecated.  Use ros_er-srv:arg2 instead.")
  (arg2 m))

(cl:ensure-generic-function 'arg3-val :lambda-list '(m))
(cl:defmethod arg3-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg3-val is deprecated.  Use ros_er-srv:arg3 instead.")
  (arg3 m))

(cl:ensure-generic-function 'arg4-val :lambda-list '(m))
(cl:defmethod arg4-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg4-val is deprecated.  Use ros_er-srv:arg4 instead.")
  (arg4 m))

(cl:ensure-generic-function 'arg5-val :lambda-list '(m))
(cl:defmethod arg5-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg5-val is deprecated.  Use ros_er-srv:arg5 instead.")
  (arg5 m))

(cl:ensure-generic-function 'arg6-val :lambda-list '(m))
(cl:defmethod arg6-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg6-val is deprecated.  Use ros_er-srv:arg6 instead.")
  (arg6 m))

(cl:ensure-generic-function 'arg7-val :lambda-list '(m))
(cl:defmethod arg7-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg7-val is deprecated.  Use ros_er-srv:arg7 instead.")
  (arg7 m))

(cl:ensure-generic-function 'arg8-val :lambda-list '(m))
(cl:defmethod arg8-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg8-val is deprecated.  Use ros_er-srv:arg8 instead.")
  (arg8 m))

(cl:ensure-generic-function 'arg9-val :lambda-list '(m))
(cl:defmethod arg9-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg9-val is deprecated.  Use ros_er-srv:arg9 instead.")
  (arg9 m))

(cl:ensure-generic-function 'arg10-val :lambda-list '(m))
(cl:defmethod arg10-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg10-val is deprecated.  Use ros_er-srv:arg10 instead.")
  (arg10 m))

(cl:ensure-generic-function 'arg11-val :lambda-list '(m))
(cl:defmethod arg11-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg11-val is deprecated.  Use ros_er-srv:arg11 instead.")
  (arg11 m))

(cl:ensure-generic-function 'arg12-val :lambda-list '(m))
(cl:defmethod arg12-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg12-val is deprecated.  Use ros_er-srv:arg12 instead.")
  (arg12 m))

(cl:ensure-generic-function 'arg13-val :lambda-list '(m))
(cl:defmethod arg13-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg13-val is deprecated.  Use ros_er-srv:arg13 instead.")
  (arg13 m))

(cl:ensure-generic-function 'arg14-val :lambda-list '(m))
(cl:defmethod arg14-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg14-val is deprecated.  Use ros_er-srv:arg14 instead.")
  (arg14 m))

(cl:ensure-generic-function 'arg15-val :lambda-list '(m))
(cl:defmethod arg15-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg15-val is deprecated.  Use ros_er-srv:arg15 instead.")
  (arg15 m))

(cl:ensure-generic-function 'arg16-val :lambda-list '(m))
(cl:defmethod arg16-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg16-val is deprecated.  Use ros_er-srv:arg16 instead.")
  (arg16 m))

(cl:ensure-generic-function 'arg17-val :lambda-list '(m))
(cl:defmethod arg17-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg17-val is deprecated.  Use ros_er-srv:arg17 instead.")
  (arg17 m))

(cl:ensure-generic-function 'arg18-val :lambda-list '(m))
(cl:defmethod arg18-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg18-val is deprecated.  Use ros_er-srv:arg18 instead.")
  (arg18 m))

(cl:ensure-generic-function 'arg19-val :lambda-list '(m))
(cl:defmethod arg19-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg19-val is deprecated.  Use ros_er-srv:arg19 instead.")
  (arg19 m))

(cl:ensure-generic-function 'arg20-val :lambda-list '(m))
(cl:defmethod arg20-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg20-val is deprecated.  Use ros_er-srv:arg20 instead.")
  (arg20 m))

(cl:ensure-generic-function 'arg21-val :lambda-list '(m))
(cl:defmethod arg21-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg21-val is deprecated.  Use ros_er-srv:arg21 instead.")
  (arg21 m))

(cl:ensure-generic-function 'arg22-val :lambda-list '(m))
(cl:defmethod arg22-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg22-val is deprecated.  Use ros_er-srv:arg22 instead.")
  (arg22 m))

(cl:ensure-generic-function 'arg23-val :lambda-list '(m))
(cl:defmethod arg23-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg23-val is deprecated.  Use ros_er-srv:arg23 instead.")
  (arg23 m))

(cl:ensure-generic-function 'arg24-val :lambda-list '(m))
(cl:defmethod arg24-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg24-val is deprecated.  Use ros_er-srv:arg24 instead.")
  (arg24 m))

(cl:ensure-generic-function 'arg25-val :lambda-list '(m))
(cl:defmethod arg25-val ((m <commands_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-srv:arg25-val is deprecated.  Use ros_er-srv:arg25 instead.")
  (arg25 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <commands_srv-response>) ostream)
  "Serializes a message object of type '<commands_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'arg0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg7)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg8)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg9)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg10)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg11)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg12)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg13)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg14)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg15)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg16)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg17)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg18)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg19)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg20)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg21)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg22)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg23)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg24)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arg25)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <commands_srv-response>) istream)
  "Deserializes a message object of type '<commands_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg7) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg8) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg9) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg10) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg11) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg12) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg13) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg14) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg15) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg16) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg17) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg18) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg19) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg20) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg21) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg22) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg23) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg24) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arg25) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<commands_srv-response>)))
  "Returns string type for a service object of type '<commands_srv-response>"
  "ros_er/commands_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commands_srv-response)))
  "Returns string type for a service object of type 'commands_srv-response"
  "ros_er/commands_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<commands_srv-response>)))
  "Returns md5sum for a message object of type '<commands_srv-response>"
  "e26ed80b052f88197b0c98586e1a7d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'commands_srv-response)))
  "Returns md5sum for a message object of type 'commands_srv-response"
  "e26ed80b052f88197b0c98586e1a7d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<commands_srv-response>)))
  "Returns full string definition for message of type '<commands_srv-response>"
  (cl:format cl:nil "int32 arg0~%int32 arg1~%int32 arg2~%int32 arg3~%int32 arg4~%int32 arg5~%int32 arg6~%int32 arg7~%int32 arg8~%int32 arg9~%int32 arg10~%int32 arg11~%int32 arg12~%int32 arg13~%int32 arg14~%int32 arg15~%int32 arg16~%int32 arg17~%int32 arg18~%int32 arg19~%int32 arg20~%int32 arg21~%int32 arg22~%int32 arg23~%int32 arg24~%int32 arg25~%#int32[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'commands_srv-response)))
  "Returns full string definition for message of type 'commands_srv-response"
  (cl:format cl:nil "int32 arg0~%int32 arg1~%int32 arg2~%int32 arg3~%int32 arg4~%int32 arg5~%int32 arg6~%int32 arg7~%int32 arg8~%int32 arg9~%int32 arg10~%int32 arg11~%int32 arg12~%int32 arg13~%int32 arg14~%int32 arg15~%int32 arg16~%int32 arg17~%int32 arg18~%int32 arg19~%int32 arg20~%int32 arg21~%int32 arg22~%int32 arg23~%int32 arg24~%int32 arg25~%#int32[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <commands_srv-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <commands_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'commands_srv-response
    (cl:cons ':arg0 (arg0 msg))
    (cl:cons ':arg1 (arg1 msg))
    (cl:cons ':arg2 (arg2 msg))
    (cl:cons ':arg3 (arg3 msg))
    (cl:cons ':arg4 (arg4 msg))
    (cl:cons ':arg5 (arg5 msg))
    (cl:cons ':arg6 (arg6 msg))
    (cl:cons ':arg7 (arg7 msg))
    (cl:cons ':arg8 (arg8 msg))
    (cl:cons ':arg9 (arg9 msg))
    (cl:cons ':arg10 (arg10 msg))
    (cl:cons ':arg11 (arg11 msg))
    (cl:cons ':arg12 (arg12 msg))
    (cl:cons ':arg13 (arg13 msg))
    (cl:cons ':arg14 (arg14 msg))
    (cl:cons ':arg15 (arg15 msg))
    (cl:cons ':arg16 (arg16 msg))
    (cl:cons ':arg17 (arg17 msg))
    (cl:cons ':arg18 (arg18 msg))
    (cl:cons ':arg19 (arg19 msg))
    (cl:cons ':arg20 (arg20 msg))
    (cl:cons ':arg21 (arg21 msg))
    (cl:cons ':arg22 (arg22 msg))
    (cl:cons ':arg23 (arg23 msg))
    (cl:cons ':arg24 (arg24 msg))
    (cl:cons ':arg25 (arg25 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'commands_srv)))
  'commands_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'commands_srv)))
  'commands_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commands_srv)))
  "Returns string type for a service object of type '<commands_srv>"
  "ros_er/commands_srv")