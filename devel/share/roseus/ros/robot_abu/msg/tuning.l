;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::tuning)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'tuning (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::TUNING")
  (make-package "ROBOT_ABU::TUNING"))

(in-package "ROS")
;;//! \htmlinclude tuning.msg.html


(defclass robot_abu::tuning
  :super ros::object
  :slots (_val_int _val_float _counter _is_float _ctr_msg ))

(defmethod robot_abu::tuning
  (:init
   (&key
    ((:val_int __val_int) 0)
    ((:val_float __val_float) 0.0)
    ((:counter __counter) 0)
    ((:is_float __is_float) nil)
    ((:ctr_msg __ctr_msg) 0)
    )
   (send-super :init)
   (setq _val_int (round __val_int))
   (setq _val_float (float __val_float))
   (setq _counter (round __counter))
   (setq _is_float __is_float)
   (setq _ctr_msg (round __ctr_msg))
   self)
  (:val_int
   (&optional __val_int)
   (if __val_int (setq _val_int __val_int)) _val_int)
  (:val_float
   (&optional __val_float)
   (if __val_float (setq _val_float __val_float)) _val_float)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:is_float
   (&optional (__is_float :null))
   (if (not (eq __is_float :null)) (setq _is_float __is_float)) _is_float)
  (:ctr_msg
   (&optional __ctr_msg)
   (if __ctr_msg (setq _ctr_msg __ctr_msg)) _ctr_msg)
  (:serialization-length
   ()
   (+
    ;; int32 _val_int
    4
    ;; float32 _val_float
    4
    ;; int8 _counter
    1
    ;; bool _is_float
    1
    ;; uint8 _ctr_msg
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _val_int
       (write-long _val_int s)
     ;; float32 _val_float
       (sys::poke _val_float (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _counter
       (write-byte _counter s)
     ;; bool _is_float
       (if _is_float (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _ctr_msg
       (write-byte _ctr_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _val_int
     (setq _val_int (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _val_float
     (setq _val_float (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _counter
     (setq _counter (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _counter 127) (setq _counter (- _counter 256)))
   ;; bool _is_float
     (setq _is_float (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _ctr_msg
     (setq _ctr_msg (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_abu::tuning :md5sum-) "258fcfb474f715e8b678ea8d146e1b92")
(setf (get robot_abu::tuning :datatype-) "robot_abu/tuning")
(setf (get robot_abu::tuning :definition-)
      "int32 val_int
float32 val_float

int8 counter
bool is_float

uint8 ctr_msg
")



(provide :robot_abu/tuning "258fcfb474f715e8b678ea8d146e1b92")


