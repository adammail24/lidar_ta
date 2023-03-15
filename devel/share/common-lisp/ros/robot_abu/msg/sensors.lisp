; Auto-generated. Do not edit!


(cl:in-package robot_abu-msg)


;//! \htmlinclude sensors.msg.html

(cl:defclass <sensors> (roslisp-msg-protocol:ros-message)
  ((global_pos_x
    :reader global_pos_x
    :initarg :global_pos_x
    :type cl:float
    :initform 0.0)
   (global_pos_y
    :reader global_pos_y
    :initarg :global_pos_y
    :type cl:float
    :initform 0.0)
   (slider
    :reader slider
    :initarg :slider
    :type cl:fixnum
    :initform 0)
   (rot
    :reader rot
    :initarg :rot
    :type cl:integer
    :initform 0)
   (rot_deg
    :reader rot_deg
    :initarg :rot_deg
    :type cl:float
    :initform 0.0)
   (engsel
    :reader engsel
    :initarg :engsel
    :type cl:integer
    :initform 0)
   (gyro
    :reader gyro
    :initarg :gyro
    :type cl:float
    :initform 0.0)
   (gyro_full
    :reader gyro_full
    :initarg :gyro_full
    :type cl:float
    :initform 0.0)
   (capit
    :reader capit
    :initarg :capit
    :type cl:fixnum
    :initform 0)
   (sick_kiri
    :reader sick_kiri
    :initarg :sick_kiri
    :type cl:float
    :initform 0.0)
   (sick_depan
    :reader sick_depan
    :initarg :sick_depan
    :type cl:float
    :initform 0.0)
   (sick_belakang
    :reader sick_belakang
    :initarg :sick_belakang
    :type cl:float
    :initform 0.0)
   (reset
    :reader reset
    :initarg :reset
    :type cl:fixnum
    :initform 0)
   (stm_reseted
    :reader stm_reseted
    :initarg :stm_reseted
    :type cl:fixnum
    :initform 0)
   (tilt_kiri
    :reader tilt_kiri
    :initarg :tilt_kiri
    :type cl:fixnum
    :initform 0)
   (tilt_kanan
    :reader tilt_kanan
    :initarg :tilt_kanan
    :type cl:fixnum
    :initform 0))
)

(cl:defclass sensors (<sensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_abu-msg:<sensors> is deprecated: use robot_abu-msg:sensors instead.")))

(cl:ensure-generic-function 'global_pos_x-val :lambda-list '(m))
(cl:defmethod global_pos_x-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:global_pos_x-val is deprecated.  Use robot_abu-msg:global_pos_x instead.")
  (global_pos_x m))

(cl:ensure-generic-function 'global_pos_y-val :lambda-list '(m))
(cl:defmethod global_pos_y-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:global_pos_y-val is deprecated.  Use robot_abu-msg:global_pos_y instead.")
  (global_pos_y m))

(cl:ensure-generic-function 'slider-val :lambda-list '(m))
(cl:defmethod slider-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:slider-val is deprecated.  Use robot_abu-msg:slider instead.")
  (slider m))

(cl:ensure-generic-function 'rot-val :lambda-list '(m))
(cl:defmethod rot-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:rot-val is deprecated.  Use robot_abu-msg:rot instead.")
  (rot m))

(cl:ensure-generic-function 'rot_deg-val :lambda-list '(m))
(cl:defmethod rot_deg-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:rot_deg-val is deprecated.  Use robot_abu-msg:rot_deg instead.")
  (rot_deg m))

(cl:ensure-generic-function 'engsel-val :lambda-list '(m))
(cl:defmethod engsel-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:engsel-val is deprecated.  Use robot_abu-msg:engsel instead.")
  (engsel m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:gyro-val is deprecated.  Use robot_abu-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'gyro_full-val :lambda-list '(m))
(cl:defmethod gyro_full-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:gyro_full-val is deprecated.  Use robot_abu-msg:gyro_full instead.")
  (gyro_full m))

(cl:ensure-generic-function 'capit-val :lambda-list '(m))
(cl:defmethod capit-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:capit-val is deprecated.  Use robot_abu-msg:capit instead.")
  (capit m))

(cl:ensure-generic-function 'sick_kiri-val :lambda-list '(m))
(cl:defmethod sick_kiri-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:sick_kiri-val is deprecated.  Use robot_abu-msg:sick_kiri instead.")
  (sick_kiri m))

(cl:ensure-generic-function 'sick_depan-val :lambda-list '(m))
(cl:defmethod sick_depan-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:sick_depan-val is deprecated.  Use robot_abu-msg:sick_depan instead.")
  (sick_depan m))

(cl:ensure-generic-function 'sick_belakang-val :lambda-list '(m))
(cl:defmethod sick_belakang-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:sick_belakang-val is deprecated.  Use robot_abu-msg:sick_belakang instead.")
  (sick_belakang m))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:reset-val is deprecated.  Use robot_abu-msg:reset instead.")
  (reset m))

(cl:ensure-generic-function 'stm_reseted-val :lambda-list '(m))
(cl:defmethod stm_reseted-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:stm_reseted-val is deprecated.  Use robot_abu-msg:stm_reseted instead.")
  (stm_reseted m))

(cl:ensure-generic-function 'tilt_kiri-val :lambda-list '(m))
(cl:defmethod tilt_kiri-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:tilt_kiri-val is deprecated.  Use robot_abu-msg:tilt_kiri instead.")
  (tilt_kiri m))

(cl:ensure-generic-function 'tilt_kanan-val :lambda-list '(m))
(cl:defmethod tilt_kanan-val ((m <sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:tilt_kanan-val is deprecated.  Use robot_abu-msg:tilt_kanan instead.")
  (tilt_kanan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensors>) ostream)
  "Serializes a message object of type '<sensors>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'global_pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'global_pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'slider)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rot_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'engsel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_full))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'capit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sick_kiri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sick_depan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sick_belakang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stm_reseted)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tilt_kiri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_kanan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensors>) istream)
  "Deserializes a message object of type '<sensors>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_pos_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'slider) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rot_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engsel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_full) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'capit) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sick_kiri) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sick_depan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sick_belakang) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stm_reseted)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_kiri) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_kanan) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensors>)))
  "Returns string type for a message object of type '<sensors>"
  "robot_abu/sensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensors)))
  "Returns string type for a message object of type 'sensors"
  "robot_abu/sensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensors>)))
  "Returns md5sum for a message object of type '<sensors>"
  "9591563098ba37db1fbca2b4031831c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensors)))
  "Returns md5sum for a message object of type 'sensors"
  "9591563098ba37db1fbca2b4031831c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensors>)))
  "Returns full string definition for message of type '<sensors>"
  (cl:format cl:nil "float32 global_pos_x~%float32 global_pos_y ~%int16 slider~%int32 rot~%float32 rot_deg~%int32 engsel~%float32 gyro~%float32 gyro_full~%int16 capit~%float32 sick_kiri~%float32 sick_depan~%float32 sick_belakang~%~%uint8 reset~%uint8 stm_reseted~%~%int8 tilt_kiri~%int8 tilt_kanan~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensors)))
  "Returns full string definition for message of type 'sensors"
  (cl:format cl:nil "float32 global_pos_x~%float32 global_pos_y ~%int16 slider~%int32 rot~%float32 rot_deg~%int32 engsel~%float32 gyro~%float32 gyro_full~%int16 capit~%float32 sick_kiri~%float32 sick_depan~%float32 sick_belakang~%~%uint8 reset~%uint8 stm_reseted~%~%int8 tilt_kiri~%int8 tilt_kanan~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensors>))
  (cl:+ 0
     4
     4
     2
     4
     4
     4
     4
     4
     2
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensors>))
  "Converts a ROS message object to a list"
  (cl:list 'sensors
    (cl:cons ':global_pos_x (global_pos_x msg))
    (cl:cons ':global_pos_y (global_pos_y msg))
    (cl:cons ':slider (slider msg))
    (cl:cons ':rot (rot msg))
    (cl:cons ':rot_deg (rot_deg msg))
    (cl:cons ':engsel (engsel msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':gyro_full (gyro_full msg))
    (cl:cons ':capit (capit msg))
    (cl:cons ':sick_kiri (sick_kiri msg))
    (cl:cons ':sick_depan (sick_depan msg))
    (cl:cons ':sick_belakang (sick_belakang msg))
    (cl:cons ':reset (reset msg))
    (cl:cons ':stm_reseted (stm_reseted msg))
    (cl:cons ':tilt_kiri (tilt_kiri msg))
    (cl:cons ':tilt_kanan (tilt_kanan msg))
))
