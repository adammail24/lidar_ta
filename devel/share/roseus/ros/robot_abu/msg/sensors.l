;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::sensors)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'sensors (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::SENSORS")
  (make-package "ROBOT_ABU::SENSORS"))

(in-package "ROS")
;;//! \htmlinclude sensors.msg.html


(defclass robot_abu::sensors
  :super ros::object
  :slots (_global_pos_x _global_pos_y _slider _rot _rot_deg _engsel _gyro _gyro_full _capit _sick_kiri _sick_depan _sick_belakang _reset _stm_reseted _tilt_kiri _tilt_kanan ))

(defmethod robot_abu::sensors
  (:init
   (&key
    ((:global_pos_x __global_pos_x) 0.0)
    ((:global_pos_y __global_pos_y) 0.0)
    ((:slider __slider) 0)
    ((:rot __rot) 0)
    ((:rot_deg __rot_deg) 0.0)
    ((:engsel __engsel) 0)
    ((:gyro __gyro) 0.0)
    ((:gyro_full __gyro_full) 0.0)
    ((:capit __capit) 0)
    ((:sick_kiri __sick_kiri) 0.0)
    ((:sick_depan __sick_depan) 0.0)
    ((:sick_belakang __sick_belakang) 0.0)
    ((:reset __reset) 0)
    ((:stm_reseted __stm_reseted) 0)
    ((:tilt_kiri __tilt_kiri) 0)
    ((:tilt_kanan __tilt_kanan) 0)
    )
   (send-super :init)
   (setq _global_pos_x (float __global_pos_x))
   (setq _global_pos_y (float __global_pos_y))
   (setq _slider (round __slider))
   (setq _rot (round __rot))
   (setq _rot_deg (float __rot_deg))
   (setq _engsel (round __engsel))
   (setq _gyro (float __gyro))
   (setq _gyro_full (float __gyro_full))
   (setq _capit (round __capit))
   (setq _sick_kiri (float __sick_kiri))
   (setq _sick_depan (float __sick_depan))
   (setq _sick_belakang (float __sick_belakang))
   (setq _reset (round __reset))
   (setq _stm_reseted (round __stm_reseted))
   (setq _tilt_kiri (round __tilt_kiri))
   (setq _tilt_kanan (round __tilt_kanan))
   self)
  (:global_pos_x
   (&optional __global_pos_x)
   (if __global_pos_x (setq _global_pos_x __global_pos_x)) _global_pos_x)
  (:global_pos_y
   (&optional __global_pos_y)
   (if __global_pos_y (setq _global_pos_y __global_pos_y)) _global_pos_y)
  (:slider
   (&optional __slider)
   (if __slider (setq _slider __slider)) _slider)
  (:rot
   (&optional __rot)
   (if __rot (setq _rot __rot)) _rot)
  (:rot_deg
   (&optional __rot_deg)
   (if __rot_deg (setq _rot_deg __rot_deg)) _rot_deg)
  (:engsel
   (&optional __engsel)
   (if __engsel (setq _engsel __engsel)) _engsel)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:gyro_full
   (&optional __gyro_full)
   (if __gyro_full (setq _gyro_full __gyro_full)) _gyro_full)
  (:capit
   (&optional __capit)
   (if __capit (setq _capit __capit)) _capit)
  (:sick_kiri
   (&optional __sick_kiri)
   (if __sick_kiri (setq _sick_kiri __sick_kiri)) _sick_kiri)
  (:sick_depan
   (&optional __sick_depan)
   (if __sick_depan (setq _sick_depan __sick_depan)) _sick_depan)
  (:sick_belakang
   (&optional __sick_belakang)
   (if __sick_belakang (setq _sick_belakang __sick_belakang)) _sick_belakang)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:stm_reseted
   (&optional __stm_reseted)
   (if __stm_reseted (setq _stm_reseted __stm_reseted)) _stm_reseted)
  (:tilt_kiri
   (&optional __tilt_kiri)
   (if __tilt_kiri (setq _tilt_kiri __tilt_kiri)) _tilt_kiri)
  (:tilt_kanan
   (&optional __tilt_kanan)
   (if __tilt_kanan (setq _tilt_kanan __tilt_kanan)) _tilt_kanan)
  (:serialization-length
   ()
   (+
    ;; float32 _global_pos_x
    4
    ;; float32 _global_pos_y
    4
    ;; int16 _slider
    2
    ;; int32 _rot
    4
    ;; float32 _rot_deg
    4
    ;; int32 _engsel
    4
    ;; float32 _gyro
    4
    ;; float32 _gyro_full
    4
    ;; int16 _capit
    2
    ;; float32 _sick_kiri
    4
    ;; float32 _sick_depan
    4
    ;; float32 _sick_belakang
    4
    ;; uint8 _reset
    1
    ;; uint8 _stm_reseted
    1
    ;; int8 _tilt_kiri
    1
    ;; int8 _tilt_kanan
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _global_pos_x
       (sys::poke _global_pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _global_pos_y
       (sys::poke _global_pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _slider
       (write-word _slider s)
     ;; int32 _rot
       (write-long _rot s)
     ;; float32 _rot_deg
       (sys::poke _rot_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _engsel
       (write-long _engsel s)
     ;; float32 _gyro
       (sys::poke _gyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_full
       (sys::poke _gyro_full (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _capit
       (write-word _capit s)
     ;; float32 _sick_kiri
       (sys::poke _sick_kiri (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sick_depan
       (sys::poke _sick_depan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sick_belakang
       (sys::poke _sick_belakang (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _reset
       (write-byte _reset s)
     ;; uint8 _stm_reseted
       (write-byte _stm_reseted s)
     ;; int8 _tilt_kiri
       (write-byte _tilt_kiri s)
     ;; int8 _tilt_kanan
       (write-byte _tilt_kanan s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _global_pos_x
     (setq _global_pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _global_pos_y
     (setq _global_pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _slider
     (setq _slider (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _rot
     (setq _rot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _rot_deg
     (setq _rot_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _engsel
     (setq _engsel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _gyro
     (setq _gyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_full
     (setq _gyro_full (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _capit
     (setq _capit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _sick_kiri
     (setq _sick_kiri (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sick_depan
     (setq _sick_depan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sick_belakang
     (setq _sick_belakang (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _reset
     (setq _reset (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _stm_reseted
     (setq _stm_reseted (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _tilt_kiri
     (setq _tilt_kiri (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_kiri 127) (setq _tilt_kiri (- _tilt_kiri 256)))
   ;; int8 _tilt_kanan
     (setq _tilt_kanan (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_kanan 127) (setq _tilt_kanan (- _tilt_kanan 256)))
   ;;
   self)
  )

(setf (get robot_abu::sensors :md5sum-) "9591563098ba37db1fbca2b4031831c7")
(setf (get robot_abu::sensors :datatype-) "robot_abu/sensors")
(setf (get robot_abu::sensors :definition-)
      "float32 global_pos_x
float32 global_pos_y 
int16 slider
int32 rot
float32 rot_deg
int32 engsel
float32 gyro
float32 gyro_full
int16 capit
float32 sick_kiri
float32 sick_depan
float32 sick_belakang

uint8 reset
uint8 stm_reseted

int8 tilt_kiri
int8 tilt_kanan
")



(provide :robot_abu/sensors "9591563098ba37db1fbca2b4031831c7")


