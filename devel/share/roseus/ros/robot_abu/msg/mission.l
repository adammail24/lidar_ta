;; Auto-generated. Do not edit!


(when (boundp 'robot_abu::mission)
  (if (not (find-package "ROBOT_ABU"))
    (make-package "ROBOT_ABU"))
  (shadow 'mission (find-package "ROBOT_ABU")))
(unless (find-package "ROBOT_ABU::MISSION")
  (make-package "ROBOT_ABU::MISSION"))

(in-package "ROS")
;;//! \htmlinclude mission.msg.html


(defclass robot_abu::mission
  :super ros::object
  :slots (_command _arg1 _arg2 _arg3 _arg4 _arg5 _arg6 _arg7 _arg8 _arg9 _arg10 _arg11 _arg12 _arg13 _arg14 _arg15 _arg16 _arg17 _arg18 _arg19 _arg20 _behaviour _timeafter _mission_counter ))

(defmethod robot_abu::mission
  (:init
   (&key
    ((:command __command) 0)
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
    ((:behaviour __behaviour) 0)
    ((:timeafter __timeafter) 0)
    ((:mission_counter __mission_counter) 0)
    )
   (send-super :init)
   (setq _command (round __command))
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
   (setq _behaviour (round __behaviour))
   (setq _timeafter (round __timeafter))
   (setq _mission_counter (round __mission_counter))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
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
  (:behaviour
   (&optional __behaviour)
   (if __behaviour (setq _behaviour __behaviour)) _behaviour)
  (:timeafter
   (&optional __timeafter)
   (if __timeafter (setq _timeafter __timeafter)) _timeafter)
  (:mission_counter
   (&optional __mission_counter)
   (if __mission_counter (setq _mission_counter __mission_counter)) _mission_counter)
  (:serialization-length
   ()
   (+
    ;; uint16 _command
    2
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
    ;; int16 _behaviour
    2
    ;; int32 _timeafter
    4
    ;; uint16 _mission_counter
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _command
       (write-word _command s)
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
     ;; int16 _behaviour
       (write-word _behaviour s)
     ;; int32 _timeafter
       (write-long _timeafter s)
     ;; uint16 _mission_counter
       (write-word _mission_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
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
   ;; int16 _behaviour
     (setq _behaviour (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _timeafter
     (setq _timeafter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _mission_counter
     (setq _mission_counter (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_abu::mission :md5sum-) "8b255d36a9b5156d79792657084a67cf")
(setf (get robot_abu::mission :datatype-) "robot_abu/mission")
(setf (get robot_abu::mission :definition-)
      "uint16 command
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
int16 behaviour
int32 timeafter
uint16 mission_counter
")



(provide :robot_abu/mission "8b255d36a9b5156d79792657084a67cf")


