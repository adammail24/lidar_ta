;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::accelerometer)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'accelerometer (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::ACCELEROMETER")
  (make-package "ROBOT_ABU::ACCELEROMETER"))

(in-package "ROS")
;;//! \htmlinclude accelerometer.msg.html


(defclass robot_abu::accelerometer
  :super ros::object
  :slots (_x _y _z _abs _deg ))

(defmethod robot_abu::accelerometer
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:abs __abs) 0.0)
    ((:deg __deg) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _abs (float __abs))
   (setq _deg (float __deg))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:abs
   (&optional __abs)
   (if __abs (setq _abs __abs)) _abs)
  (:deg
   (&optional __deg)
   (if __deg (setq _deg __deg)) _deg)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
    2
    ;; float32 _abs
    4
    ;; float32 _deg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _z
       (write-word _z s)
     ;; float32 _abs
       (sys::poke _abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deg
       (sys::poke _deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _abs
     (setq _abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deg
     (setq _deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_abu::accelerometer :md5sum-) "60988a549f73f8fefc8885d02a7d28b8")
(setf (get robot_abu::accelerometer :datatype-) "robot_abu/accelerometer")
(setf (get robot_abu::accelerometer :definition-)
      "int16 x
int16 y
int16 z

float32 abs
float32 deg

")



(provide :robot_abu/accelerometer "60988a549f73f8fefc8885d02a7d28b8")


