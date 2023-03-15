; Auto-generated. Do not edit!


(cl:in-package robot_abu-msg)


;//! \htmlinclude mission.msg.html

(cl:defclass <mission> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
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
   (behaviour
    :reader behaviour
    :initarg :behaviour
    :type cl:fixnum
    :initform 0)
   (timeafter
    :reader timeafter
    :initarg :timeafter
    :type cl:integer
    :initform 0)
   (mission_counter
    :reader mission_counter
    :initarg :mission_counter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mission (<mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_abu-msg:<mission> is deprecated: use robot_abu-msg:mission instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:command-val is deprecated.  Use robot_abu-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'arg1-val :lambda-list '(m))
(cl:defmethod arg1-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg1-val is deprecated.  Use robot_abu-msg:arg1 instead.")
  (arg1 m))

(cl:ensure-generic-function 'arg2-val :lambda-list '(m))
(cl:defmethod arg2-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg2-val is deprecated.  Use robot_abu-msg:arg2 instead.")
  (arg2 m))

(cl:ensure-generic-function 'arg3-val :lambda-list '(m))
(cl:defmethod arg3-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg3-val is deprecated.  Use robot_abu-msg:arg3 instead.")
  (arg3 m))

(cl:ensure-generic-function 'arg4-val :lambda-list '(m))
(cl:defmethod arg4-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg4-val is deprecated.  Use robot_abu-msg:arg4 instead.")
  (arg4 m))

(cl:ensure-generic-function 'arg5-val :lambda-list '(m))
(cl:defmethod arg5-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg5-val is deprecated.  Use robot_abu-msg:arg5 instead.")
  (arg5 m))

(cl:ensure-generic-function 'arg6-val :lambda-list '(m))
(cl:defmethod arg6-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg6-val is deprecated.  Use robot_abu-msg:arg6 instead.")
  (arg6 m))

(cl:ensure-generic-function 'arg7-val :lambda-list '(m))
(cl:defmethod arg7-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg7-val is deprecated.  Use robot_abu-msg:arg7 instead.")
  (arg7 m))

(cl:ensure-generic-function 'arg8-val :lambda-list '(m))
(cl:defmethod arg8-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg8-val is deprecated.  Use robot_abu-msg:arg8 instead.")
  (arg8 m))

(cl:ensure-generic-function 'arg9-val :lambda-list '(m))
(cl:defmethod arg9-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg9-val is deprecated.  Use robot_abu-msg:arg9 instead.")
  (arg9 m))

(cl:ensure-generic-function 'arg10-val :lambda-list '(m))
(cl:defmethod arg10-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg10-val is deprecated.  Use robot_abu-msg:arg10 instead.")
  (arg10 m))

(cl:ensure-generic-function 'arg11-val :lambda-list '(m))
(cl:defmethod arg11-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg11-val is deprecated.  Use robot_abu-msg:arg11 instead.")
  (arg11 m))

(cl:ensure-generic-function 'arg12-val :lambda-list '(m))
(cl:defmethod arg12-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg12-val is deprecated.  Use robot_abu-msg:arg12 instead.")
  (arg12 m))

(cl:ensure-generic-function 'arg13-val :lambda-list '(m))
(cl:defmethod arg13-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg13-val is deprecated.  Use robot_abu-msg:arg13 instead.")
  (arg13 m))

(cl:ensure-generic-function 'arg14-val :lambda-list '(m))
(cl:defmethod arg14-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg14-val is deprecated.  Use robot_abu-msg:arg14 instead.")
  (arg14 m))

(cl:ensure-generic-function 'arg15-val :lambda-list '(m))
(cl:defmethod arg15-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg15-val is deprecated.  Use robot_abu-msg:arg15 instead.")
  (arg15 m))

(cl:ensure-generic-function 'arg16-val :lambda-list '(m))
(cl:defmethod arg16-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg16-val is deprecated.  Use robot_abu-msg:arg16 instead.")
  (arg16 m))

(cl:ensure-generic-function 'arg17-val :lambda-list '(m))
(cl:defmethod arg17-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg17-val is deprecated.  Use robot_abu-msg:arg17 instead.")
  (arg17 m))

(cl:ensure-generic-function 'arg18-val :lambda-list '(m))
(cl:defmethod arg18-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg18-val is deprecated.  Use robot_abu-msg:arg18 instead.")
  (arg18 m))

(cl:ensure-generic-function 'arg19-val :lambda-list '(m))
(cl:defmethod arg19-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg19-val is deprecated.  Use robot_abu-msg:arg19 instead.")
  (arg19 m))

(cl:ensure-generic-function 'arg20-val :lambda-list '(m))
(cl:defmethod arg20-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:arg20-val is deprecated.  Use robot_abu-msg:arg20 instead.")
  (arg20 m))

(cl:ensure-generic-function 'behaviour-val :lambda-list '(m))
(cl:defmethod behaviour-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:behaviour-val is deprecated.  Use robot_abu-msg:behaviour instead.")
  (behaviour m))

(cl:ensure-generic-function 'timeafter-val :lambda-list '(m))
(cl:defmethod timeafter-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:timeafter-val is deprecated.  Use robot_abu-msg:timeafter instead.")
  (timeafter m))

(cl:ensure-generic-function 'mission_counter-val :lambda-list '(m))
(cl:defmethod mission_counter-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_abu-msg:mission_counter-val is deprecated.  Use robot_abu-msg:mission_counter instead.")
  (mission_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission>) ostream)
  "Serializes a message object of type '<mission>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'behaviour)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeafter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mission_counter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission>) istream)
  "Deserializes a message object of type '<mission>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'behaviour) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeafter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mission_counter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission>)))
  "Returns string type for a message object of type '<mission>"
  "robot_abu/mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission)))
  "Returns string type for a message object of type 'mission"
  "robot_abu/mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission>)))
  "Returns md5sum for a message object of type '<mission>"
  "8b255d36a9b5156d79792657084a67cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission)))
  "Returns md5sum for a message object of type 'mission"
  "8b255d36a9b5156d79792657084a67cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission>)))
  "Returns full string definition for message of type '<mission>"
  (cl:format cl:nil "uint16 command~%int32 arg1~%int32 arg2~%int32 arg3~%int32 arg4~%int32 arg5~%int32 arg6~%int32 arg7~%int32 arg8~%int32 arg9~%int32 arg10~%int32 arg11~%int32 arg12~%int32 arg13~%int32 arg14~%int32 arg15~%int32 arg16~%int32 arg17~%int32 arg18~%int32 arg19~%int32 arg20~%int16 behaviour~%int32 timeafter~%uint16 mission_counter~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission)))
  "Returns full string definition for message of type 'mission"
  (cl:format cl:nil "uint16 command~%int32 arg1~%int32 arg2~%int32 arg3~%int32 arg4~%int32 arg5~%int32 arg6~%int32 arg7~%int32 arg8~%int32 arg9~%int32 arg10~%int32 arg11~%int32 arg12~%int32 arg13~%int32 arg14~%int32 arg15~%int32 arg16~%int32 arg17~%int32 arg18~%int32 arg19~%int32 arg20~%int16 behaviour~%int32 timeafter~%uint16 mission_counter~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission>))
  (cl:+ 0
     2
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
     2
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission>))
  "Converts a ROS message object to a list"
  (cl:list 'mission
    (cl:cons ':command (command msg))
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
    (cl:cons ':behaviour (behaviour msg))
    (cl:cons ':timeafter (timeafter msg))
    (cl:cons ':mission_counter (mission_counter msg))
))
