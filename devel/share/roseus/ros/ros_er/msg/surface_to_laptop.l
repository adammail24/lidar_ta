;; Auto-generated. Do not edit!


(when (boundp 'ros_er::surface_to_laptop)
  (if (not (find-package "ROS_ER"))
    (make-package "ROS_ER"))
  (shadow 'surface_to_laptop (find-package "ROS_ER")))
(unless (find-package "ROS_ER::SURFACE_TO_LAPTOP")
  (make-package "ROS_ER::SURFACE_TO_LAPTOP"))

(in-package "ROS")
;;//! \htmlinclude surface_to_laptop.msg.html


(defclass ros_er::surface_to_laptop
  :super ros::object
  :slots (_speed_x _speed_y _speed_z _odom_x _odom_y _gyro_full _target_speed_x _target_speed_y _target_speed_z _laser _laser_hpf _command_type _m_ctr _time_stamp ))

(defmethod ros_er::surface_to_laptop
  (:init
   (&key
    ((:speed_x __speed_x) 0)
    ((:speed_y __speed_y) 0)
    ((:speed_z __speed_z) 0)
    ((:odom_x __odom_x) 0.0)
    ((:odom_y __odom_y) 0.0)
    ((:gyro_full __gyro_full) 0.0)
    ((:target_speed_x __target_speed_x) 0)
    ((:target_speed_y __target_speed_y) 0)
    ((:target_speed_z __target_speed_z) 0)
    ((:laser __laser) 0.0)
    ((:laser_hpf __laser_hpf) 0.0)
    ((:command_type __command_type) 0)
    ((:m_ctr __m_ctr) 0)
    ((:time_stamp __time_stamp) 0.0)
    )
   (send-super :init)
   (setq _speed_x (round __speed_x))
   (setq _speed_y (round __speed_y))
   (setq _speed_z (round __speed_z))
   (setq _odom_x (float __odom_x))
   (setq _odom_y (float __odom_y))
   (setq _gyro_full (float __gyro_full))
   (setq _target_speed_x (round __target_speed_x))
   (setq _target_speed_y (round __target_speed_y))
   (setq _target_speed_z (round __target_speed_z))
   (setq _laser (float __laser))
   (setq _laser_hpf (float __laser_hpf))
   (setq _command_type (round __command_type))
   (setq _m_ctr (round __m_ctr))
   (setq _time_stamp (float __time_stamp))
   self)
  (:speed_x
   (&optional __speed_x)
   (if __speed_x (setq _speed_x __speed_x)) _speed_x)
  (:speed_y
   (&optional __speed_y)
   (if __speed_y (setq _speed_y __speed_y)) _speed_y)
  (:speed_z
   (&optional __speed_z)
   (if __speed_z (setq _speed_z __speed_z)) _speed_z)
  (:odom_x
   (&optional __odom_x)
   (if __odom_x (setq _odom_x __odom_x)) _odom_x)
  (:odom_y
   (&optional __odom_y)
   (if __odom_y (setq _odom_y __odom_y)) _odom_y)
  (:gyro_full
   (&optional __gyro_full)
   (if __gyro_full (setq _gyro_full __gyro_full)) _gyro_full)
  (:target_speed_x
   (&optional __target_speed_x)
   (if __target_speed_x (setq _target_speed_x __target_speed_x)) _target_speed_x)
  (:target_speed_y
   (&optional __target_speed_y)
   (if __target_speed_y (setq _target_speed_y __target_speed_y)) _target_speed_y)
  (:target_speed_z
   (&optional __target_speed_z)
   (if __target_speed_z (setq _target_speed_z __target_speed_z)) _target_speed_z)
  (:laser
   (&optional __laser)
   (if __laser (setq _laser __laser)) _laser)
  (:laser_hpf
   (&optional __laser_hpf)
   (if __laser_hpf (setq _laser_hpf __laser_hpf)) _laser_hpf)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:m_ctr
   (&optional __m_ctr)
   (if __m_ctr (setq _m_ctr __m_ctr)) _m_ctr)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _speed_x
    2
    ;; int16 _speed_y
    2
    ;; int16 _speed_z
    2
    ;; float32 _odom_x
    4
    ;; float32 _odom_y
    4
    ;; float32 _gyro_full
    4
    ;; int16 _target_speed_x
    2
    ;; int16 _target_speed_y
    2
    ;; int16 _target_speed_z
    2
    ;; float32 _laser
    4
    ;; float32 _laser_hpf
    4
    ;; int8 _command_type
    1
    ;; int16 _m_ctr
    2
    ;; float32 _time_stamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _speed_x
       (write-word _speed_x s)
     ;; int16 _speed_y
       (write-word _speed_y s)
     ;; int16 _speed_z
       (write-word _speed_z s)
     ;; float32 _odom_x
       (sys::poke _odom_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_y
       (sys::poke _odom_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_full
       (sys::poke _gyro_full (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _target_speed_x
       (write-word _target_speed_x s)
     ;; int16 _target_speed_y
       (write-word _target_speed_y s)
     ;; int16 _target_speed_z
       (write-word _target_speed_z s)
     ;; float32 _laser
       (sys::poke _laser (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _laser_hpf
       (sys::poke _laser_hpf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _command_type
       (write-byte _command_type s)
     ;; int16 _m_ctr
       (write-word _m_ctr s)
     ;; float32 _time_stamp
       (sys::poke _time_stamp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _speed_x
     (setq _speed_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed_y
     (setq _speed_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed_z
     (setq _speed_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _odom_x
     (setq _odom_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_y
     (setq _odom_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_full
     (setq _gyro_full (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _target_speed_x
     (setq _target_speed_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_speed_y
     (setq _target_speed_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_speed_z
     (setq _target_speed_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _laser
     (setq _laser (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _laser_hpf
     (setq _laser_hpf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _command_type
     (setq _command_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command_type 127) (setq _command_type (- _command_type 256)))
   ;; int16 _m_ctr
     (setq _m_ctr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_er::surface_to_laptop :md5sum-) "6b07eb02f2a67188d7d9858575aca1a0")
(setf (get ros_er::surface_to_laptop :datatype-) "ros_er/surface_to_laptop")
(setf (get ros_er::surface_to_laptop :definition-)
      "int16 speed_x
int16 speed_y
int16 speed_z

float32 odom_x
float32 odom_y
float32 gyro_full

int16 target_speed_x
int16 target_speed_y
int16 target_speed_z

float32 laser
float32 laser_hpf

int8 command_type
int16 m_ctr

float32 time_stamp

")



(provide :ros_er/surface_to_laptop "6b07eb02f2a67188d7d9858575aca1a0")


