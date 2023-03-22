; Auto-generated. Do not edit!


(cl:in-package ros_er-msg)


;//! \htmlinclude surface_to_laptop.msg.html

(cl:defclass <surface_to_laptop> (roslisp-msg-protocol:ros-message)
  ((speed_x
    :reader speed_x
    :initarg :speed_x
    :type cl:fixnum
    :initform 0)
   (speed_y
    :reader speed_y
    :initarg :speed_y
    :type cl:fixnum
    :initform 0)
   (speed_z
    :reader speed_z
    :initarg :speed_z
    :type cl:fixnum
    :initform 0)
   (odom_x
    :reader odom_x
    :initarg :odom_x
    :type cl:float
    :initform 0.0)
   (odom_y
    :reader odom_y
    :initarg :odom_y
    :type cl:float
    :initform 0.0)
   (gyro_full
    :reader gyro_full
    :initarg :gyro_full
    :type cl:float
    :initform 0.0)
   (target_speed_x
    :reader target_speed_x
    :initarg :target_speed_x
    :type cl:fixnum
    :initform 0)
   (target_speed_y
    :reader target_speed_y
    :initarg :target_speed_y
    :type cl:fixnum
    :initform 0)
   (target_speed_z
    :reader target_speed_z
    :initarg :target_speed_z
    :type cl:fixnum
    :initform 0)
   (laser
    :reader laser
    :initarg :laser
    :type cl:float
    :initform 0.0)
   (laser_hpf
    :reader laser_hpf
    :initarg :laser_hpf
    :type cl:float
    :initform 0.0)
   (command_type
    :reader command_type
    :initarg :command_type
    :type cl:fixnum
    :initform 0)
   (m_ctr
    :reader m_ctr
    :initarg :m_ctr
    :type cl:fixnum
    :initform 0)
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass surface_to_laptop (<surface_to_laptop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <surface_to_laptop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'surface_to_laptop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-msg:<surface_to_laptop> is deprecated: use ros_er-msg:surface_to_laptop instead.")))

(cl:ensure-generic-function 'speed_x-val :lambda-list '(m))
(cl:defmethod speed_x-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_x-val is deprecated.  Use ros_er-msg:speed_x instead.")
  (speed_x m))

(cl:ensure-generic-function 'speed_y-val :lambda-list '(m))
(cl:defmethod speed_y-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_y-val is deprecated.  Use ros_er-msg:speed_y instead.")
  (speed_y m))

(cl:ensure-generic-function 'speed_z-val :lambda-list '(m))
(cl:defmethod speed_z-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_z-val is deprecated.  Use ros_er-msg:speed_z instead.")
  (speed_z m))

(cl:ensure-generic-function 'odom_x-val :lambda-list '(m))
(cl:defmethod odom_x-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:odom_x-val is deprecated.  Use ros_er-msg:odom_x instead.")
  (odom_x m))

(cl:ensure-generic-function 'odom_y-val :lambda-list '(m))
(cl:defmethod odom_y-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:odom_y-val is deprecated.  Use ros_er-msg:odom_y instead.")
  (odom_y m))

(cl:ensure-generic-function 'gyro_full-val :lambda-list '(m))
(cl:defmethod gyro_full-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:gyro_full-val is deprecated.  Use ros_er-msg:gyro_full instead.")
  (gyro_full m))

(cl:ensure-generic-function 'target_speed_x-val :lambda-list '(m))
(cl:defmethod target_speed_x-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_speed_x-val is deprecated.  Use ros_er-msg:target_speed_x instead.")
  (target_speed_x m))

(cl:ensure-generic-function 'target_speed_y-val :lambda-list '(m))
(cl:defmethod target_speed_y-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_speed_y-val is deprecated.  Use ros_er-msg:target_speed_y instead.")
  (target_speed_y m))

(cl:ensure-generic-function 'target_speed_z-val :lambda-list '(m))
(cl:defmethod target_speed_z-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_speed_z-val is deprecated.  Use ros_er-msg:target_speed_z instead.")
  (target_speed_z m))

(cl:ensure-generic-function 'laser-val :lambda-list '(m))
(cl:defmethod laser-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:laser-val is deprecated.  Use ros_er-msg:laser instead.")
  (laser m))

(cl:ensure-generic-function 'laser_hpf-val :lambda-list '(m))
(cl:defmethod laser_hpf-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:laser_hpf-val is deprecated.  Use ros_er-msg:laser_hpf instead.")
  (laser_hpf m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:command_type-val is deprecated.  Use ros_er-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'm_ctr-val :lambda-list '(m))
(cl:defmethod m_ctr-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:m_ctr-val is deprecated.  Use ros_er-msg:m_ctr instead.")
  (m_ctr m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <surface_to_laptop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:time_stamp-val is deprecated.  Use ros_er-msg:time_stamp instead.")
  (time_stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <surface_to_laptop>) ostream)
  "Serializes a message object of type '<surface_to_laptop>"
  (cl:let* ((signed (cl:slot-value msg 'speed_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_full))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'target_speed_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_speed_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_speed_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laser_hpf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'command_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'm_ctr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <surface_to_laptop>) istream)
  "Deserializes a message object of type '<surface_to_laptop>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_full) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_speed_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_speed_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_speed_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laser) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laser_hpf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm_ctr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_stamp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<surface_to_laptop>)))
  "Returns string type for a message object of type '<surface_to_laptop>"
  "ros_er/surface_to_laptop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'surface_to_laptop)))
  "Returns string type for a message object of type 'surface_to_laptop"
  "ros_er/surface_to_laptop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<surface_to_laptop>)))
  "Returns md5sum for a message object of type '<surface_to_laptop>"
  "6b07eb02f2a67188d7d9858575aca1a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'surface_to_laptop)))
  "Returns md5sum for a message object of type 'surface_to_laptop"
  "6b07eb02f2a67188d7d9858575aca1a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<surface_to_laptop>)))
  "Returns full string definition for message of type '<surface_to_laptop>"
  (cl:format cl:nil "int16 speed_x~%int16 speed_y~%int16 speed_z~%~%float32 odom_x~%float32 odom_y~%float32 gyro_full~%~%int16 target_speed_x~%int16 target_speed_y~%int16 target_speed_z~%~%float32 laser~%float32 laser_hpf~%~%int8 command_type~%int16 m_ctr~%~%float32 time_stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'surface_to_laptop)))
  "Returns full string definition for message of type 'surface_to_laptop"
  (cl:format cl:nil "int16 speed_x~%int16 speed_y~%int16 speed_z~%~%float32 odom_x~%float32 odom_y~%float32 gyro_full~%~%int16 target_speed_x~%int16 target_speed_y~%int16 target_speed_z~%~%float32 laser~%float32 laser_hpf~%~%int8 command_type~%int16 m_ctr~%~%float32 time_stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <surface_to_laptop>))
  (cl:+ 0
     2
     2
     2
     4
     4
     4
     2
     2
     2
     4
     4
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <surface_to_laptop>))
  "Converts a ROS message object to a list"
  (cl:list 'surface_to_laptop
    (cl:cons ':speed_x (speed_x msg))
    (cl:cons ':speed_y (speed_y msg))
    (cl:cons ':speed_z (speed_z msg))
    (cl:cons ':odom_x (odom_x msg))
    (cl:cons ':odom_y (odom_y msg))
    (cl:cons ':gyro_full (gyro_full msg))
    (cl:cons ':target_speed_x (target_speed_x msg))
    (cl:cons ':target_speed_y (target_speed_y msg))
    (cl:cons ':target_speed_z (target_speed_z msg))
    (cl:cons ':laser (laser msg))
    (cl:cons ':laser_hpf (laser_hpf msg))
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':m_ctr (m_ctr msg))
    (cl:cons ':time_stamp (time_stamp msg))
))
