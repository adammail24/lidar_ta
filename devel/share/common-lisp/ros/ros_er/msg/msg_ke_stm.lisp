; Auto-generated. Do not edit!


(cl:in-package ros_er-msg)


;//! \htmlinclude msg_ke_stm.msg.html

(cl:defclass <msg_ke_stm> (roslisp-msg-protocol:ros-message)
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
   (target_slider
    :reader target_slider
    :initarg :target_slider
    :type cl:fixnum
    :initform 0)
   (speed_slider
    :reader speed_slider
    :initarg :speed_slider
    :type cl:fixnum
    :initform 0)
   (target_rot
    :reader target_rot
    :initarg :target_rot
    :type cl:fixnum
    :initform 0)
   (speed_rot
    :reader speed_rot
    :initarg :speed_rot
    :type cl:fixnum
    :initform 0)
   (target_capit
    :reader target_capit
    :initarg :target_capit
    :type cl:fixnum
    :initform 0)
   (speed_capit
    :reader speed_capit
    :initarg :speed_capit
    :type cl:fixnum
    :initform 0)
   (target_engsel
    :reader target_engsel
    :initarg :target_engsel
    :type cl:fixnum
    :initform 0)
   (bit_pneumatik
    :reader bit_pneumatik
    :initarg :bit_pneumatik
    :type cl:fixnum
    :initform 0)
   (status_robot
    :reader status_robot
    :initarg :status_robot
    :type cl:fixnum
    :initform 0)
   (reset_enc
    :reader reset_enc
    :initarg :reset_enc
    :type cl:fixnum
    :initform 0)
   (reset_gpos_x
    :reader reset_gpos_x
    :initarg :reset_gpos_x
    :type cl:fixnum
    :initform 0)
   (reset_gpos_y
    :reader reset_gpos_y
    :initarg :reset_gpos_y
    :type cl:fixnum
    :initform 0)
   (reset_gyro_val
    :reader reset_gyro_val
    :initarg :reset_gyro_val
    :type cl:fixnum
    :initform 0)
   (buzzer
    :reader buzzer
    :initarg :buzzer
    :type cl:fixnum
    :initform 0)
   (pos_head
    :reader pos_head
    :initarg :pos_head
    :type cl:integer
    :initform 0)
   (acc_x
    :reader acc_x
    :initarg :acc_x
    :type cl:fixnum
    :initform 0)
   (acc_y
    :reader acc_y
    :initarg :acc_y
    :type cl:fixnum
    :initform 0)
   (acc_z
    :reader acc_z
    :initarg :acc_z
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
    :initform 0)
   (target_carry
    :reader target_carry
    :initarg :target_carry
    :type cl:fixnum
    :initform 0)
   (speed_carry
    :reader speed_carry
    :initarg :speed_carry
    :type cl:fixnum
    :initform 0))
)

(cl:defclass msg_ke_stm (<msg_ke_stm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_ke_stm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_ke_stm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-msg:<msg_ke_stm> is deprecated: use ros_er-msg:msg_ke_stm instead.")))

(cl:ensure-generic-function 'speed_x-val :lambda-list '(m))
(cl:defmethod speed_x-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_x-val is deprecated.  Use ros_er-msg:speed_x instead.")
  (speed_x m))

(cl:ensure-generic-function 'speed_y-val :lambda-list '(m))
(cl:defmethod speed_y-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_y-val is deprecated.  Use ros_er-msg:speed_y instead.")
  (speed_y m))

(cl:ensure-generic-function 'speed_z-val :lambda-list '(m))
(cl:defmethod speed_z-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_z-val is deprecated.  Use ros_er-msg:speed_z instead.")
  (speed_z m))

(cl:ensure-generic-function 'target_slider-val :lambda-list '(m))
(cl:defmethod target_slider-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_slider-val is deprecated.  Use ros_er-msg:target_slider instead.")
  (target_slider m))

(cl:ensure-generic-function 'speed_slider-val :lambda-list '(m))
(cl:defmethod speed_slider-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_slider-val is deprecated.  Use ros_er-msg:speed_slider instead.")
  (speed_slider m))

(cl:ensure-generic-function 'target_rot-val :lambda-list '(m))
(cl:defmethod target_rot-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_rot-val is deprecated.  Use ros_er-msg:target_rot instead.")
  (target_rot m))

(cl:ensure-generic-function 'speed_rot-val :lambda-list '(m))
(cl:defmethod speed_rot-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_rot-val is deprecated.  Use ros_er-msg:speed_rot instead.")
  (speed_rot m))

(cl:ensure-generic-function 'target_capit-val :lambda-list '(m))
(cl:defmethod target_capit-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_capit-val is deprecated.  Use ros_er-msg:target_capit instead.")
  (target_capit m))

(cl:ensure-generic-function 'speed_capit-val :lambda-list '(m))
(cl:defmethod speed_capit-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_capit-val is deprecated.  Use ros_er-msg:speed_capit instead.")
  (speed_capit m))

(cl:ensure-generic-function 'target_engsel-val :lambda-list '(m))
(cl:defmethod target_engsel-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_engsel-val is deprecated.  Use ros_er-msg:target_engsel instead.")
  (target_engsel m))

(cl:ensure-generic-function 'bit_pneumatik-val :lambda-list '(m))
(cl:defmethod bit_pneumatik-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:bit_pneumatik-val is deprecated.  Use ros_er-msg:bit_pneumatik instead.")
  (bit_pneumatik m))

(cl:ensure-generic-function 'status_robot-val :lambda-list '(m))
(cl:defmethod status_robot-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:status_robot-val is deprecated.  Use ros_er-msg:status_robot instead.")
  (status_robot m))

(cl:ensure-generic-function 'reset_enc-val :lambda-list '(m))
(cl:defmethod reset_enc-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:reset_enc-val is deprecated.  Use ros_er-msg:reset_enc instead.")
  (reset_enc m))

(cl:ensure-generic-function 'reset_gpos_x-val :lambda-list '(m))
(cl:defmethod reset_gpos_x-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:reset_gpos_x-val is deprecated.  Use ros_er-msg:reset_gpos_x instead.")
  (reset_gpos_x m))

(cl:ensure-generic-function 'reset_gpos_y-val :lambda-list '(m))
(cl:defmethod reset_gpos_y-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:reset_gpos_y-val is deprecated.  Use ros_er-msg:reset_gpos_y instead.")
  (reset_gpos_y m))

(cl:ensure-generic-function 'reset_gyro_val-val :lambda-list '(m))
(cl:defmethod reset_gyro_val-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:reset_gyro_val-val is deprecated.  Use ros_er-msg:reset_gyro_val instead.")
  (reset_gyro_val m))

(cl:ensure-generic-function 'buzzer-val :lambda-list '(m))
(cl:defmethod buzzer-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:buzzer-val is deprecated.  Use ros_er-msg:buzzer instead.")
  (buzzer m))

(cl:ensure-generic-function 'pos_head-val :lambda-list '(m))
(cl:defmethod pos_head-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:pos_head-val is deprecated.  Use ros_er-msg:pos_head instead.")
  (pos_head m))

(cl:ensure-generic-function 'acc_x-val :lambda-list '(m))
(cl:defmethod acc_x-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:acc_x-val is deprecated.  Use ros_er-msg:acc_x instead.")
  (acc_x m))

(cl:ensure-generic-function 'acc_y-val :lambda-list '(m))
(cl:defmethod acc_y-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:acc_y-val is deprecated.  Use ros_er-msg:acc_y instead.")
  (acc_y m))

(cl:ensure-generic-function 'acc_z-val :lambda-list '(m))
(cl:defmethod acc_z-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:acc_z-val is deprecated.  Use ros_er-msg:acc_z instead.")
  (acc_z m))

(cl:ensure-generic-function 'tilt_kiri-val :lambda-list '(m))
(cl:defmethod tilt_kiri-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:tilt_kiri-val is deprecated.  Use ros_er-msg:tilt_kiri instead.")
  (tilt_kiri m))

(cl:ensure-generic-function 'tilt_kanan-val :lambda-list '(m))
(cl:defmethod tilt_kanan-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:tilt_kanan-val is deprecated.  Use ros_er-msg:tilt_kanan instead.")
  (tilt_kanan m))

(cl:ensure-generic-function 'target_carry-val :lambda-list '(m))
(cl:defmethod target_carry-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:target_carry-val is deprecated.  Use ros_er-msg:target_carry instead.")
  (target_carry m))

(cl:ensure-generic-function 'speed_carry-val :lambda-list '(m))
(cl:defmethod speed_carry-val ((m <msg_ke_stm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:speed_carry-val is deprecated.  Use ros_er-msg:speed_carry instead.")
  (speed_carry m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_ke_stm>) ostream)
  "Serializes a message object of type '<msg_ke_stm>"
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
  (cl:let* ((signed (cl:slot-value msg 'target_slider)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_slider)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_rot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_rot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_capit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_capit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_engsel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bit_pneumatik)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_robot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset_enc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reset_gpos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reset_gpos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reset_gyro_val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pos_head)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acc_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acc_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acc_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_kiri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_kanan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_carry)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_carry)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_ke_stm>) istream)
  "Deserializes a message object of type '<msg_ke_stm>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_slider) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_slider) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_rot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_rot) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_capit) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_capit) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_engsel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bit_pneumatik)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_robot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset_enc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reset_gpos_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reset_gpos_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reset_gyro_val) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_head) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_kiri) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_kanan) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_carry) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_carry) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_ke_stm>)))
  "Returns string type for a message object of type '<msg_ke_stm>"
  "ros_er/msg_ke_stm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_ke_stm)))
  "Returns string type for a message object of type 'msg_ke_stm"
  "ros_er/msg_ke_stm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_ke_stm>)))
  "Returns md5sum for a message object of type '<msg_ke_stm>"
  "c2633e3a1a163ec7dbfa4502b05291a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_ke_stm)))
  "Returns md5sum for a message object of type 'msg_ke_stm"
  "c2633e3a1a163ec7dbfa4502b05291a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_ke_stm>)))
  "Returns full string definition for message of type '<msg_ke_stm>"
  (cl:format cl:nil "int16 speed_x~%int16 speed_y~%int16 speed_z~%~%int16 target_slider~%int16 speed_slider~%~%int16 target_rot~%int16 speed_rot~%~%int16 target_capit~%int16 speed_capit~%~%int16 target_engsel~%~%uint8 bit_pneumatik ~%~%uint8 status_robot~%~%uint8 reset_enc~%~%int16 reset_gpos_x~%int16 reset_gpos_y~%~%int16 reset_gyro_val~%~%uint8 buzzer~%~%int32 pos_head~%~%int16 acc_x~%int16 acc_y~%int16 acc_z~%~%int8 tilt_kiri~%int8 tilt_kanan~%~%int16 target_carry~%int16 speed_carry~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_ke_stm)))
  "Returns full string definition for message of type 'msg_ke_stm"
  (cl:format cl:nil "int16 speed_x~%int16 speed_y~%int16 speed_z~%~%int16 target_slider~%int16 speed_slider~%~%int16 target_rot~%int16 speed_rot~%~%int16 target_capit~%int16 speed_capit~%~%int16 target_engsel~%~%uint8 bit_pneumatik ~%~%uint8 status_robot~%~%uint8 reset_enc~%~%int16 reset_gpos_x~%int16 reset_gpos_y~%~%int16 reset_gyro_val~%~%uint8 buzzer~%~%int32 pos_head~%~%int16 acc_x~%int16 acc_y~%int16 acc_z~%~%int8 tilt_kiri~%int8 tilt_kanan~%~%int16 target_carry~%int16 speed_carry~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_ke_stm>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     1
     1
     1
     2
     2
     2
     1
     4
     2
     2
     2
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_ke_stm>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_ke_stm
    (cl:cons ':speed_x (speed_x msg))
    (cl:cons ':speed_y (speed_y msg))
    (cl:cons ':speed_z (speed_z msg))
    (cl:cons ':target_slider (target_slider msg))
    (cl:cons ':speed_slider (speed_slider msg))
    (cl:cons ':target_rot (target_rot msg))
    (cl:cons ':speed_rot (speed_rot msg))
    (cl:cons ':target_capit (target_capit msg))
    (cl:cons ':speed_capit (speed_capit msg))
    (cl:cons ':target_engsel (target_engsel msg))
    (cl:cons ':bit_pneumatik (bit_pneumatik msg))
    (cl:cons ':status_robot (status_robot msg))
    (cl:cons ':reset_enc (reset_enc msg))
    (cl:cons ':reset_gpos_x (reset_gpos_x msg))
    (cl:cons ':reset_gpos_y (reset_gpos_y msg))
    (cl:cons ':reset_gyro_val (reset_gyro_val msg))
    (cl:cons ':buzzer (buzzer msg))
    (cl:cons ':pos_head (pos_head msg))
    (cl:cons ':acc_x (acc_x msg))
    (cl:cons ':acc_y (acc_y msg))
    (cl:cons ':acc_z (acc_z msg))
    (cl:cons ':tilt_kiri (tilt_kiri msg))
    (cl:cons ':tilt_kanan (tilt_kanan msg))
    (cl:cons ':target_carry (target_carry msg))
    (cl:cons ':speed_carry (speed_carry msg))
))
