;; Auto-generated. Do not edit!


(when (boundp 'rosRR_2023::lidar_aim)
  (if (not (find-package "ROSRR_2023"))
    (make-package "ROSRR_2023"))
  (shadow 'lidar_aim (find-package "ROSRR_2023")))
(unless (find-package "ROSRR_2023::LIDAR_AIM")
  (make-package "ROSRR_2023::LIDAR_AIM"))
(unless (find-package "ROSRR_2023::LIDAR_AIMREQUEST")
  (make-package "ROSRR_2023::LIDAR_AIMREQUEST"))
(unless (find-package "ROSRR_2023::LIDAR_AIMRESPONSE")
  (make-package "ROSRR_2023::LIDAR_AIMRESPONSE"))

(in-package "ROS")





(defclass rosRR_2023::lidar_aimRequest
  :super ros::object
  :slots (_lower_dist_th _upper_dist_th _type ))

(defmethod rosRR_2023::lidar_aimRequest
  (:init
   (&key
    ((:lower_dist_th __lower_dist_th) 0.0)
    ((:upper_dist_th __upper_dist_th) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _lower_dist_th (float __lower_dist_th))
   (setq _upper_dist_th (float __upper_dist_th))
   (setq _type (round __type))
   self)
  (:lower_dist_th
   (&optional __lower_dist_th)
   (if __lower_dist_th (setq _lower_dist_th __lower_dist_th)) _lower_dist_th)
  (:upper_dist_th
   (&optional __upper_dist_th)
   (if __upper_dist_th (setq _upper_dist_th __upper_dist_th)) _upper_dist_th)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float32 _lower_dist_th
    4
    ;; float32 _upper_dist_th
    4
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lower_dist_th
       (sys::poke _lower_dist_th (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _upper_dist_th
       (sys::poke _upper_dist_th (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lower_dist_th
     (setq _lower_dist_th (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _upper_dist_th
     (setq _upper_dist_th (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosRR_2023::lidar_aimResponse
  :super ros::object
  :slots (_angle_error _dist _success ))

(defmethod rosRR_2023::lidar_aimResponse
  (:init
   (&key
    ((:angle_error __angle_error) 0.0)
    ((:dist __dist) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _angle_error (float __angle_error))
   (setq _dist (float __dist))
   (setq _success __success)
   self)
  (:angle_error
   (&optional __angle_error)
   (if __angle_error (setq _angle_error __angle_error)) _angle_error)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32 _angle_error
    4
    ;; float32 _dist
    4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle_error
       (sys::poke _angle_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle_error
     (setq _angle_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosRR_2023::lidar_aim
  :super ros::object
  :slots ())

(setf (get rosRR_2023::lidar_aim :md5sum-) "4cdded07bae4fc4aff836f568bed0239")
(setf (get rosRR_2023::lidar_aim :datatype-) "rosRR_2023/lidar_aim")
(setf (get rosRR_2023::lidar_aim :request) rosRR_2023::lidar_aimRequest)
(setf (get rosRR_2023::lidar_aim :response) rosRR_2023::lidar_aimResponse)

(defmethod rosRR_2023::lidar_aimRequest
  (:response () (instance rosRR_2023::lidar_aimResponse :init)))

(setf (get rosRR_2023::lidar_aimRequest :md5sum-) "4cdded07bae4fc4aff836f568bed0239")
(setf (get rosRR_2023::lidar_aimRequest :datatype-) "rosRR_2023/lidar_aimRequest")
(setf (get rosRR_2023::lidar_aimRequest :definition-)
      "float32 lower_dist_th
float32 upper_dist_th
uint8 type
---
float32 angle_error
float32 dist
bool success
")

(setf (get rosRR_2023::lidar_aimResponse :md5sum-) "4cdded07bae4fc4aff836f568bed0239")
(setf (get rosRR_2023::lidar_aimResponse :datatype-) "rosRR_2023/lidar_aimResponse")
(setf (get rosRR_2023::lidar_aimResponse :definition-)
      "float32 lower_dist_th
float32 upper_dist_th
uint8 type
---
float32 angle_error
float32 dist
bool success
")



(provide :rosRR_2023/lidar_aim "4cdded07bae4fc4aff836f568bed0239")


