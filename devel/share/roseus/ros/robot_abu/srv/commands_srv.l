;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::commands_srv)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'commands_srv (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::COMMANDS_SRV")
  (make-package "ROBOT_ABU::COMMANDS_SRV"))
(unless (find-package "ROBOT_ABU::COMMANDS_SRVREQUEST")
  (make-package "ROBOT_ABU::COMMANDS_SRVREQUEST"))
(unless (find-package "ROBOT_ABU::COMMANDS_SRVRESPONSE")
  (make-package "ROBOT_ABU::COMMANDS_SRVRESPONSE"))

(in-package "ROS")





(defclass robot_abu::commands_srvRequest
  :super ros::object
  :slots (_mission_counter _ask ))

(defmethod robot_abu::commands_srvRequest
  (:init
   (&key
    ((:mission_counter __mission_counter) 0)
    ((:ask __ask) 0)
    )
   (send-super :init)
   (setq _mission_counter (round __mission_counter))
   (setq _ask (round __ask))
   self)
  (:mission_counter
   (&optional __mission_counter)
   (if __mission_counter (setq _mission_counter __mission_counter)) _mission_counter)
  (:ask
   (&optional __ask)
   (if __ask (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; int8 _mission_counter
    1
    ;; int16 _ask
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mission_counter
       (write-byte _mission_counter s)
     ;; int16 _ask
       (write-word _ask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mission_counter
     (setq _mission_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mission_counter 127) (setq _mission_counter (- _mission_counter 256)))
   ;; int16 _ask
     (setq _ask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_abu::commands_srvResponse
  :super ros::object
  :slots (_arg0 _arg1 _arg2 _arg3 _arg4 _arg5 _arg6 _arg7 _arg8 _arg9 _arg10 _arg11 _arg12 _arg13 _arg14 _arg15 _arg16 _arg17 _arg18 _arg19 _arg20 _arg21 _arg22 _arg23 _arg24 _arg25 ))

(defmethod robot_abu::commands_srvResponse
  (:init
   (&key
    ((:arg0 __arg0) 0)
    ((:arg1 __arg1) 0)
    ((:arg2 __arg2) 0)
    ((:arg3 __arg3) 0)
    ((:arg4 __arg4) 0)
    ((:arg5 __arg5) 0)
    ((:arg6 __arg6) 0)
    ((:arg7 __arg7) 0)
    ((:arg8 __arg8) 0)
    ((:arg9 __arg9) 0)
    ((:arg10 __arg10) 0)
    ((:arg11 __arg11) 0)
    ((:arg12 __arg12) 0)
    ((:arg13 __arg13) 0)
    ((:arg14 __arg14) 0)
    ((:arg15 __arg15) 0)
    ((:arg16 __arg16) 0)
    ((:arg17 __arg17) 0)
    ((:arg18 __arg18) 0)
    ((:arg19 __arg19) 0)
    ((:arg20 __arg20) 0)
    ((:arg21 __arg21) 0)
    ((:arg22 __arg22) 0)
    ((:arg23 __arg23) 0)
    ((:arg24 __arg24) 0)
    ((:arg25 __arg25) 0)
    )
   (send-super :init)
   (setq _arg0 (round __arg0))
   (setq _arg1 (round __arg1))
   (setq _arg2 (round __arg2))
   (setq _arg3 (round __arg3))
   (setq _arg4 (round __arg4))
   (setq _arg5 (round __arg5))
   (setq _arg6 (round __arg6))
   (setq _arg7 (round __arg7))
   (setq _arg8 (round __arg8))
   (setq _arg9 (round __arg9))
   (setq _arg10 (round __arg10))
   (setq _arg11 (round __arg11))
   (setq _arg12 (round __arg12))
   (setq _arg13 (round __arg13))
   (setq _arg14 (round __arg14))
   (setq _arg15 (round __arg15))
   (setq _arg16 (round __arg16))
   (setq _arg17 (round __arg17))
   (setq _arg18 (round __arg18))
   (setq _arg19 (round __arg19))
   (setq _arg20 (round __arg20))
   (setq _arg21 (round __arg21))
   (setq _arg22 (round __arg22))
   (setq _arg23 (round __arg23))
   (setq _arg24 (round __arg24))
   (setq _arg25 (round __arg25))
   self)
  (:arg0
   (&optional __arg0)
   (if __arg0 (setq _arg0 __arg0)) _arg0)
  (:arg1
   (&optional __arg1)
   (if __arg1 (setq _arg1 __arg1)) _arg1)
  (:arg2
   (&optional __arg2)
   (if __arg2 (setq _arg2 __arg2)) _arg2)
  (:arg3
   (&optional __arg3)
   (if __arg3 (setq _arg3 __arg3)) _arg3)
  (:arg4
   (&optional __arg4)
   (if __arg4 (setq _arg4 __arg4)) _arg4)
  (:arg5
   (&optional __arg5)
   (if __arg5 (setq _arg5 __arg5)) _arg5)
  (:arg6
   (&optional __arg6)
   (if __arg6 (setq _arg6 __arg6)) _arg6)
  (:arg7
   (&optional __arg7)
   (if __arg7 (setq _arg7 __arg7)) _arg7)
  (:arg8
   (&optional __arg8)
   (if __arg8 (setq _arg8 __arg8)) _arg8)
  (:arg9
   (&optional __arg9)
   (if __arg9 (setq _arg9 __arg9)) _arg9)
  (:arg10
   (&optional __arg10)
   (if __arg10 (setq _arg10 __arg10)) _arg10)
  (:arg11
   (&optional __arg11)
   (if __arg11 (setq _arg11 __arg11)) _arg11)
  (:arg12
   (&optional __arg12)
   (if __arg12 (setq _arg12 __arg12)) _arg12)
  (:arg13
   (&optional __arg13)
   (if __arg13 (setq _arg13 __arg13)) _arg13)
  (:arg14
   (&optional __arg14)
   (if __arg14 (setq _arg14 __arg14)) _arg14)
  (:arg15
   (&optional __arg15)
   (if __arg15 (setq _arg15 __arg15)) _arg15)
  (:arg16
   (&optional __arg16)
   (if __arg16 (setq _arg16 __arg16)) _arg16)
  (:arg17
   (&optional __arg17)
   (if __arg17 (setq _arg17 __arg17)) _arg17)
  (:arg18
   (&optional __arg18)
   (if __arg18 (setq _arg18 __arg18)) _arg18)
  (:arg19
   (&optional __arg19)
   (if __arg19 (setq _arg19 __arg19)) _arg19)
  (:arg20
   (&optional __arg20)
   (if __arg20 (setq _arg20 __arg20)) _arg20)
  (:arg21
   (&optional __arg21)
   (if __arg21 (setq _arg21 __arg21)) _arg21)
  (:arg22
   (&optional __arg22)
   (if __arg22 (setq _arg22 __arg22)) _arg22)
  (:arg23
   (&optional __arg23)
   (if __arg23 (setq _arg23 __arg23)) _arg23)
  (:arg24
   (&optional __arg24)
   (if __arg24 (setq _arg24 __arg24)) _arg24)
  (:arg25
   (&optional __arg25)
   (if __arg25 (setq _arg25 __arg25)) _arg25)
  (:serialization-length
   ()
   (+
    ;; int32 _arg0
    4
    ;; int32 _arg1
    4
    ;; int32 _arg2
    4
    ;; int32 _arg3
    4
    ;; int32 _arg4
    4
    ;; int32 _arg5
    4
    ;; int32 _arg6
    4
    ;; int32 _arg7
    4
    ;; int32 _arg8
    4
    ;; int32 _arg9
    4
    ;; int32 _arg10
    4
    ;; int32 _arg11
    4
    ;; int32 _arg12
    4
    ;; int32 _arg13
    4
    ;; int32 _arg14
    4
    ;; int32 _arg15
    4
    ;; int32 _arg16
    4
    ;; int32 _arg17
    4
    ;; int32 _arg18
    4
    ;; int32 _arg19
    4
    ;; int32 _arg20
    4
    ;; int32 _arg21
    4
    ;; int32 _arg22
    4
    ;; int32 _arg23
    4
    ;; int32 _arg24
    4
    ;; int32 _arg25
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _arg0
       (write-long _arg0 s)
     ;; int32 _arg1
       (write-long _arg1 s)
     ;; int32 _arg2
       (write-long _arg2 s)
     ;; int32 _arg3
       (write-long _arg3 s)
     ;; int32 _arg4
       (write-long _arg4 s)
     ;; int32 _arg5
       (write-long _arg5 s)
     ;; int32 _arg6
       (write-long _arg6 s)
     ;; int32 _arg7
       (write-long _arg7 s)
     ;; int32 _arg8
       (write-long _arg8 s)
     ;; int32 _arg9
       (write-long _arg9 s)
     ;; int32 _arg10
       (write-long _arg10 s)
     ;; int32 _arg11
       (write-long _arg11 s)
     ;; int32 _arg12
       (write-long _arg12 s)
     ;; int32 _arg13
       (write-long _arg13 s)
     ;; int32 _arg14
       (write-long _arg14 s)
     ;; int32 _arg15
       (write-long _arg15 s)
     ;; int32 _arg16
       (write-long _arg16 s)
     ;; int32 _arg17
       (write-long _arg17 s)
     ;; int32 _arg18
       (write-long _arg18 s)
     ;; int32 _arg19
       (write-long _arg19 s)
     ;; int32 _arg20
       (write-long _arg20 s)
     ;; int32 _arg21
       (write-long _arg21 s)
     ;; int32 _arg22
       (write-long _arg22 s)
     ;; int32 _arg23
       (write-long _arg23 s)
     ;; int32 _arg24
       (write-long _arg24 s)
     ;; int32 _arg25
       (write-long _arg25 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _arg0
     (setq _arg0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg1
     (setq _arg1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg2
     (setq _arg2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg3
     (setq _arg3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg4
     (setq _arg4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg5
     (setq _arg5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg6
     (setq _arg6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg7
     (setq _arg7 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg8
     (setq _arg8 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg9
     (setq _arg9 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg10
     (setq _arg10 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg11
     (setq _arg11 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg12
     (setq _arg12 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg13
     (setq _arg13 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg14
     (setq _arg14 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg15
     (setq _arg15 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg16
     (setq _arg16 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg17
     (setq _arg17 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg18
     (setq _arg18 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg19
     (setq _arg19 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg20
     (setq _arg20 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg21
     (setq _arg21 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg22
     (setq _arg22 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg23
     (setq _arg23 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg24
     (setq _arg24 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arg25
     (setq _arg25 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_abu::commands_srv
  :super ros::object
  :slots ())

(setf (get robot_abu::commands_srv :md5sum-) "e26ed80b052f88197b0c98586e1a7d10")
(setf (get robot_abu::commands_srv :datatype-) "robot_abu/commands_srv")
(setf (get robot_abu::commands_srv :request) robot_abu::commands_srvRequest)
(setf (get robot_abu::commands_srv :response) robot_abu::commands_srvResponse)

(defmethod robot_abu::commands_srvRequest
  (:response () (instance robot_abu::commands_srvResponse :init)))

(setf (get robot_abu::commands_srvRequest :md5sum-) "e26ed80b052f88197b0c98586e1a7d10")
(setf (get robot_abu::commands_srvRequest :datatype-) "robot_abu/commands_srvRequest")
(setf (get robot_abu::commands_srvRequest :definition-)
      "int8 mission_counter
int16 ask
---
int32 arg0
int32 arg1
int32 arg2
int32 arg3
int32 arg4
int32 arg5
int32 arg6
int32 arg7
int32 arg8
int32 arg9
int32 arg10
int32 arg11
int32 arg12
int32 arg13
int32 arg14
int32 arg15
int32 arg16
int32 arg17
int32 arg18
int32 arg19
int32 arg20
int32 arg21
int32 arg22
int32 arg23
int32 arg24
int32 arg25
#int32[] args
")

(setf (get robot_abu::commands_srvResponse :md5sum-) "e26ed80b052f88197b0c98586e1a7d10")
(setf (get robot_abu::commands_srvResponse :datatype-) "robot_abu/commands_srvResponse")
(setf (get robot_abu::commands_srvResponse :definition-)
      "int8 mission_counter
int16 ask
---
int32 arg0
int32 arg1
int32 arg2
int32 arg3
int32 arg4
int32 arg5
int32 arg6
int32 arg7
int32 arg8
int32 arg9
int32 arg10
int32 arg11
int32 arg12
int32 arg13
int32 arg14
int32 arg15
int32 arg16
int32 arg17
int32 arg18
int32 arg19
int32 arg20
int32 arg21
int32 arg22
int32 arg23
int32 arg24
int32 arg25
#int32[] args
")



(provide :robot_abu/commands_srv "e26ed80b052f88197b0c98586e1a7d10")


