;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::msg_ke_stm)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'msg_ke_stm (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::MSG_KE_STM")
  (make-package "ROBOT_ABU::MSG_KE_STM"))

(in-package "ROS")
;;//! \htmlinclude msg_ke_stm.msg.html


(defclass robot_abu::msg_ke_stm
  :super ros::object
  :slots (_speed_x _speed_y _speed_z _target_slider _speed_slider _target_rot _speed_rot _target_capit _speed_capit _target_engsel _bit_pneumatik _status_robot _reset_enc _reset_gpos_x _reset_gpos_y _reset_gyro_val _buzzer _pos_head _acc_x _acc_y _acc_z _tilt_kiri _tilt_kanan ))

(defmethod robot_abu::msg_ke_stm
  (:init
   (&key
    ((:speed_x __speed_x) 0)
    ((:speed_y __speed_y) 0)
    ((:speed_z __speed_z) 0)
    ((:target_slider __target_slider) 0)
    ((:speed_slider __speed_slider) 0)
    ((:target_rot __target_rot) 0)
    ((:speed_rot __speed_rot) 0)
    ((:target_capit __target_capit) 0)
    ((:speed_capit __speed_capit) 0)
    ((:target_engsel __target_engsel) 0)
    ((:bit_pneumatik __bit_pneumatik) 0)
    ((:status_robot __status_robot) 0)
    ((:reset_enc __reset_enc) 0)
    ((:reset_gpos_x __reset_gpos_x) 0)
    ((:reset_gpos_y __reset_gpos_y) 0)
    ((:reset_gyro_val __reset_gyro_val) 0)
    ((:buzzer __buzzer) 0)
    ((:pos_head __pos_head) 0)
    ((:acc_x __acc_x) 0)
    ((:acc_y __acc_y) 0)
    ((:acc_z __acc_z) 0)
    ((:tilt_kiri __tilt_kiri) 0)
    ((:tilt_kanan __tilt_kanan) 0)
    )
   (send-super :init)
   (setq _speed_x (round __speed_x))
   (setq _speed_y (round __speed_y))
   (setq _speed_z (round __speed_z))
   (setq _target_slider (round __target_slider))
   (setq _speed_slider (round __speed_slider))
   (setq _target_rot (round __target_rot))
   (setq _speed_rot (round __speed_rot))
   (setq _target_capit (round __target_capit))
   (setq _speed_capit (round __speed_capit))
   (setq _target_engsel (round __target_engsel))
   (setq _bit_pneumatik (round __bit_pneumatik))
   (setq _status_robot (round __status_robot))
   (setq _reset_enc (round __reset_enc))
   (setq _reset_gpos_x (round __reset_gpos_x))
   (setq _reset_gpos_y (round __reset_gpos_y))
   (setq _reset_gyro_val (round __reset_gyro_val))
   (setq _buzzer (round __buzzer))
   (setq _pos_head (round __pos_head))
   (setq _acc_x (round __acc_x))
   (setq _acc_y (round __acc_y))
   (setq _acc_z (round __acc_z))
   (setq _tilt_kiri (round __tilt_kiri))
   (setq _tilt_kanan (round __tilt_kanan))
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
  (:target_slider
   (&optional __target_slider)
   (if __target_slider (setq _target_slider __target_slider)) _target_slider)
  (:speed_slider
   (&optional __speed_slider)
   (if __speed_slider (setq _speed_slider __speed_slider)) _speed_slider)
  (:target_rot
   (&optional __target_rot)
   (if __target_rot (setq _target_rot __target_rot)) _target_rot)
  (:speed_rot
   (&optional __speed_rot)
   (if __speed_rot (setq _speed_rot __speed_rot)) _speed_rot)
  (:target_capit
   (&optional __target_capit)
   (if __target_capit (setq _target_capit __target_capit)) _target_capit)
  (:speed_capit
   (&optional __speed_capit)
   (if __speed_capit (setq _speed_capit __speed_capit)) _speed_capit)
  (:target_engsel
   (&optional __target_engsel)
   (if __target_engsel (setq _target_engsel __target_engsel)) _target_engsel)
  (:bit_pneumatik
   (&optional __bit_pneumatik)
   (if __bit_pneumatik (setq _bit_pneumatik __bit_pneumatik)) _bit_pneumatik)
  (:status_robot
   (&optional __status_robot)
   (if __status_robot (setq _status_robot __status_robot)) _status_robot)
  (:reset_enc
   (&optional __reset_enc)
   (if __reset_enc (setq _reset_enc __reset_enc)) _reset_enc)
  (:reset_gpos_x
   (&optional __reset_gpos_x)
   (if __reset_gpos_x (setq _reset_gpos_x __reset_gpos_x)) _reset_gpos_x)
  (:reset_gpos_y
   (&optional __reset_gpos_y)
   (if __reset_gpos_y (setq _reset_gpos_y __reset_gpos_y)) _reset_gpos_y)
  (:reset_gyro_val
   (&optional __reset_gyro_val)
   (if __reset_gyro_val (setq _reset_gyro_val __reset_gyro_val)) _reset_gyro_val)
  (:buzzer
   (&optional __buzzer)
   (if __buzzer (setq _buzzer __buzzer)) _buzzer)
  (:pos_head
   (&optional __pos_head)
   (if __pos_head (setq _pos_head __pos_head)) _pos_head)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:tilt_kiri
   (&optional __tilt_kiri)
   (if __tilt_kiri (setq _tilt_kiri __tilt_kiri)) _tilt_kiri)
  (:tilt_kanan
   (&optional __tilt_kanan)
   (if __tilt_kanan (setq _tilt_kanan __tilt_kanan)) _tilt_kanan)
  (:serialization-length
   ()
   (+
    ;; int16 _speed_x
    2
    ;; int16 _speed_y
    2
    ;; int16 _speed_z
    2
    ;; int16 _target_slider
    2
    ;; int16 _speed_slider
    2
    ;; int16 _target_rot
    2
    ;; int16 _speed_rot
    2
    ;; int16 _target_capit
    2
    ;; int16 _speed_capit
    2
    ;; int16 _target_engsel
    2
    ;; uint8 _bit_pneumatik
    1
    ;; uint8 _status_robot
    1
    ;; uint8 _reset_enc
    1
    ;; int16 _reset_gpos_x
    2
    ;; int16 _reset_gpos_y
    2
    ;; int16 _reset_gyro_val
    2
    ;; uint8 _buzzer
    1
    ;; int32 _pos_head
    4
    ;; int16 _acc_x
    2
    ;; int16 _acc_y
    2
    ;; int16 _acc_z
    2
    ;; int8 _tilt_kiri
    1
    ;; int8 _tilt_kanan
    1
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
     ;; int16 _target_slider
       (write-word _target_slider s)
     ;; int16 _speed_slider
       (write-word _speed_slider s)
     ;; int16 _target_rot
       (write-word _target_rot s)
     ;; int16 _speed_rot
       (write-word _speed_rot s)
     ;; int16 _target_capit
       (write-word _target_capit s)
     ;; int16 _speed_capit
       (write-word _speed_capit s)
     ;; int16 _target_engsel
       (write-word _target_engsel s)
     ;; uint8 _bit_pneumatik
       (write-byte _bit_pneumatik s)
     ;; uint8 _status_robot
       (write-byte _status_robot s)
     ;; uint8 _reset_enc
       (write-byte _reset_enc s)
     ;; int16 _reset_gpos_x
       (write-word _reset_gpos_x s)
     ;; int16 _reset_gpos_y
       (write-word _reset_gpos_y s)
     ;; int16 _reset_gyro_val
       (write-word _reset_gyro_val s)
     ;; uint8 _buzzer
       (write-byte _buzzer s)
     ;; int32 _pos_head
       (write-long _pos_head s)
     ;; int16 _acc_x
       (write-word _acc_x s)
     ;; int16 _acc_y
       (write-word _acc_y s)
     ;; int16 _acc_z
       (write-word _acc_z s)
     ;; int8 _tilt_kiri
       (write-byte _tilt_kiri s)
     ;; int8 _tilt_kanan
       (write-byte _tilt_kanan s)
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
   ;; int16 _target_slider
     (setq _target_slider (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed_slider
     (setq _speed_slider (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_rot
     (setq _target_rot (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed_rot
     (setq _speed_rot (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_capit
     (setq _target_capit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed_capit
     (setq _speed_capit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _target_engsel
     (setq _target_engsel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _bit_pneumatik
     (setq _bit_pneumatik (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status_robot
     (setq _status_robot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reset_enc
     (setq _reset_enc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _reset_gpos_x
     (setq _reset_gpos_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _reset_gpos_y
     (setq _reset_gpos_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _reset_gyro_val
     (setq _reset_gyro_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _buzzer
     (setq _buzzer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _pos_head
     (setq _pos_head (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _acc_x
     (setq _acc_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _acc_y
     (setq _acc_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _acc_z
     (setq _acc_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _tilt_kiri
     (setq _tilt_kiri (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_kiri 127) (setq _tilt_kiri (- _tilt_kiri 256)))
   ;; int8 _tilt_kanan
     (setq _tilt_kanan (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_kanan 127) (setq _tilt_kanan (- _tilt_kanan 256)))
   ;;
   self)
  )

(setf (get robot_abu::msg_ke_stm :md5sum-) "1e62da1cb9b3444cba6540c099267b73")
(setf (get robot_abu::msg_ke_stm :datatype-) "robot_abu/msg_ke_stm")
(setf (get robot_abu::msg_ke_stm :definition-)
      "int16 speed_x
int16 speed_y
int16 speed_z

int16 target_slider
int16 speed_slider

int16 target_rot
int16 speed_rot

int16 target_capit
int16 speed_capit

int16 target_engsel

uint8 bit_pneumatik 

uint8 status_robot

uint8 reset_enc

int16 reset_gpos_x
int16 reset_gpos_y

int16 reset_gyro_val

uint8 buzzer

int32 pos_head

int16 acc_x
int16 acc_y
int16 acc_z

int8 tilt_kiri
int8 tilt_kanan
")



(provide :robot_abu/msg_ke_stm "1e62da1cb9b3444cba6540c099267b73")


