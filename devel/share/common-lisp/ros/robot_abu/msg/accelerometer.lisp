; Auto-generated. Do not edit!


(cl:in-package robot_abu-msg)


;//! \htmlinclude accelerometer.msg.html

(cl:defclass <accelerometer> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0)
   (abs
    :reader abs
    :initarg :abs
    :type cl:float
    :initform 0.0)
   (deg
    :reader deg
    :initarg :deg
    :type cl:float
    :initform 0.0))
)

(cl:defclass accelerometer (<accelerometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <accelerometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'accelerometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_abu-msg:<accelerometer> is deprecated: use robot_abu-msg:accelerometer instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:x-val is deprecated.  Use robot_abu-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:y-val is deprecated.  Use robot_abu-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:z-val is deprecated.  Use robot_abu-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'abs-val :lambda-list '(m))
(cl:defmethod abs-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:abs-val is deprecated.  Use robot_abu-msg:abs instead.")
  (abs m))

(cl:ensure-generic-function 'deg-val :lambda-list '(m))
(cl:defmethod deg-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:deg-val is deprecated.  Use robot_abu-msg:deg instead.")
  (deg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <accelerometer>) ostream)
  "Serializes a message object of type '<accelerometer>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <accelerometer>) istream)
  "Deserializes a message object of type '<accelerometer>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deg) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<accelerometer>)))
  "Returns string type for a message object of type '<accelerometer>"
  "robot_abu/accelerometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'accelerometer)))
  "Returns string type for a message object of type 'accelerometer"
  "robot_abu/accelerometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<accelerometer>)))
  "Returns md5sum for a message object of type '<accelerometer>"
  "60988a549f73f8fefc8885d02a7d28b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'accelerometer)))
  "Returns md5sum for a message object of type 'accelerometer"
  "60988a549f73f8fefc8885d02a7d28b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<accelerometer>)))
  "Returns full string definition for message of type '<accelerometer>"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%float32 abs~%float32 deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'accelerometer)))
  "Returns full string definition for message of type 'accelerometer"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%float32 abs~%float32 deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <accelerometer>))
  (cl:+ 0
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <accelerometer>))
  "Converts a ROS message object to a list"
  (cl:list 'accelerometer
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':abs (abs msg))
    (cl:cons ':deg (deg msg))
))
