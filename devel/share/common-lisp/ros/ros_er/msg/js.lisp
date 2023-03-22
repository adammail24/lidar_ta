; Auto-generated. Do not edit!


(cl:in-package ros_er-msg)


;//! \htmlinclude js.msg.html

(cl:defclass <js> (roslisp-msg-protocol:ros-message)
  ((button
    :reader button
    :initarg :button
    :type cl:integer
    :initform 0)
   (left_js_x
    :reader left_js_x
    :initarg :left_js_x
    :type cl:integer
    :initform 0)
   (left_js_y
    :reader left_js_y
    :initarg :left_js_y
    :type cl:integer
    :initform 0)
   (right_js_x
    :reader right_js_x
    :initarg :right_js_x
    :type cl:fixnum
    :initform 0)
   (right_js_y
    :reader right_js_y
    :initarg :right_js_y
    :type cl:fixnum
    :initform 0)
   (kiri_kanan
    :reader kiri_kanan
    :initarg :kiri_kanan
    :type cl:fixnum
    :initform 0)
   (atas_bawah
    :reader atas_bawah
    :initarg :atas_bawah
    :type cl:fixnum
    :initform 0)
   (l2
    :reader l2
    :initarg :l2
    :type cl:integer
    :initform 0)
   (r2
    :reader r2
    :initarg :r2
    :type cl:integer
    :initform 0)
   (event
    :reader event
    :initarg :event
    :type cl:fixnum
    :initform 0))
)

(cl:defclass js (<js>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <js>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'js)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_er-msg:<js> is deprecated: use ros_er-msg:js instead.")))

(cl:ensure-generic-function 'button-val :lambda-list '(m))
(cl:defmethod button-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:button-val is deprecated.  Use ros_er-msg:button instead.")
  (button m))

(cl:ensure-generic-function 'left_js_x-val :lambda-list '(m))
(cl:defmethod left_js_x-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:left_js_x-val is deprecated.  Use ros_er-msg:left_js_x instead.")
  (left_js_x m))

(cl:ensure-generic-function 'left_js_y-val :lambda-list '(m))
(cl:defmethod left_js_y-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:left_js_y-val is deprecated.  Use ros_er-msg:left_js_y instead.")
  (left_js_y m))

(cl:ensure-generic-function 'right_js_x-val :lambda-list '(m))
(cl:defmethod right_js_x-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:right_js_x-val is deprecated.  Use ros_er-msg:right_js_x instead.")
  (right_js_x m))

(cl:ensure-generic-function 'right_js_y-val :lambda-list '(m))
(cl:defmethod right_js_y-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:right_js_y-val is deprecated.  Use ros_er-msg:right_js_y instead.")
  (right_js_y m))

(cl:ensure-generic-function 'kiri_kanan-val :lambda-list '(m))
(cl:defmethod kiri_kanan-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:kiri_kanan-val is deprecated.  Use ros_er-msg:kiri_kanan instead.")
  (kiri_kanan m))

(cl:ensure-generic-function 'atas_bawah-val :lambda-list '(m))
(cl:defmethod atas_bawah-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:atas_bawah-val is deprecated.  Use ros_er-msg:atas_bawah instead.")
  (atas_bawah m))

(cl:ensure-generic-function 'l2-val :lambda-list '(m))
(cl:defmethod l2-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:l2-val is deprecated.  Use ros_er-msg:l2 instead.")
  (l2 m))

(cl:ensure-generic-function 'r2-val :lambda-list '(m))
(cl:defmethod r2-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:r2-val is deprecated.  Use ros_er-msg:r2 instead.")
  (r2 m))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <js>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_er-msg:event-val is deprecated.  Use ros_er-msg:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <js>) ostream)
  "Serializes a message object of type '<js>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'button)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'button)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'button)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_js_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_js_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_js_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_js_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_js_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_js_y)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'kiri_kanan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'atas_bawah)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'l2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'r2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <js>) istream)
  "Deserializes a message object of type '<js>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'button)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'button)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'button)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_js_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_js_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_js_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_js_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_js_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_js_y)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kiri_kanan) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'atas_bawah) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<js>)))
  "Returns string type for a message object of type '<js>"
  "ros_er/js")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'js)))
  "Returns string type for a message object of type 'js"
  "ros_er/js")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<js>)))
  "Returns md5sum for a message object of type '<js>"
  "27307fc51b0d7a911c746c6fbd3def00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'js)))
  "Returns md5sum for a message object of type 'js"
  "27307fc51b0d7a911c746c6fbd3def00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<js>)))
  "Returns full string definition for message of type '<js>"
  (cl:format cl:nil "uint32 button~%int32 left_js_x~%int32 left_js_y~%uint16 right_js_x~%uint16 right_js_y~%int16 kiri_kanan~%int16 atas_bawah~%int32 l2~%int32 r2~%uint8 event~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'js)))
  "Returns full string definition for message of type 'js"
  (cl:format cl:nil "uint32 button~%int32 left_js_x~%int32 left_js_y~%uint16 right_js_x~%uint16 right_js_y~%int16 kiri_kanan~%int16 atas_bawah~%int32 l2~%int32 r2~%uint8 event~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <js>))
  (cl:+ 0
     4
     4
     4
     2
     2
     2
     2
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <js>))
  "Converts a ROS message object to a list"
  (cl:list 'js
    (cl:cons ':button (button msg))
    (cl:cons ':left_js_x (left_js_x msg))
    (cl:cons ':left_js_y (left_js_y msg))
    (cl:cons ':right_js_x (right_js_x msg))
    (cl:cons ':right_js_y (right_js_y msg))
    (cl:cons ':kiri_kanan (kiri_kanan msg))
    (cl:cons ':atas_bawah (atas_bawah msg))
    (cl:cons ':l2 (l2 msg))
    (cl:cons ':r2 (r2 msg))
    (cl:cons ':event (event msg))
))
