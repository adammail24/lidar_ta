;; Auto-generated. Do not edit!


(when (boundp 'ros_er::js)
  (if (not (find-package "ROS_ER"))
    (make-package "ROS_ER"))
  (shadow 'js (find-package "ROS_ER")))
(unless (find-package "ROS_ER::JS")
  (make-package "ROS_ER::JS"))

(in-package "ROS")
;;//! \htmlinclude js.msg.html


(defclass ros_er::js
  :super ros::object
  :slots (_button _left_js_x _left_js_y _right_js_x _right_js_y _kiri_kanan _atas_bawah _l2 _r2 _event ))

(defmethod ros_er::js
  (:init
   (&key
    ((:button __button) 0)
    ((:left_js_x __left_js_x) 0)
    ((:left_js_y __left_js_y) 0)
    ((:right_js_x __right_js_x) 0)
    ((:right_js_y __right_js_y) 0)
    ((:kiri_kanan __kiri_kanan) 0)
    ((:atas_bawah __atas_bawah) 0)
    ((:l2 __l2) 0)
    ((:r2 __r2) 0)
    ((:event __event) 0)
    )
   (send-super :init)
   (setq _button (round __button))
   (setq _left_js_x (round __left_js_x))
   (setq _left_js_y (round __left_js_y))
   (setq _right_js_x (round __right_js_x))
   (setq _right_js_y (round __right_js_y))
   (setq _kiri_kanan (round __kiri_kanan))
   (setq _atas_bawah (round __atas_bawah))
   (setq _l2 (round __l2))
   (setq _r2 (round __r2))
   (setq _event (round __event))
   self)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:left_js_x
   (&optional __left_js_x)
   (if __left_js_x (setq _left_js_x __left_js_x)) _left_js_x)
  (:left_js_y
   (&optional __left_js_y)
   (if __left_js_y (setq _left_js_y __left_js_y)) _left_js_y)
  (:right_js_x
   (&optional __right_js_x)
   (if __right_js_x (setq _right_js_x __right_js_x)) _right_js_x)
  (:right_js_y
   (&optional __right_js_y)
   (if __right_js_y (setq _right_js_y __right_js_y)) _right_js_y)
  (:kiri_kanan
   (&optional __kiri_kanan)
   (if __kiri_kanan (setq _kiri_kanan __kiri_kanan)) _kiri_kanan)
  (:atas_bawah
   (&optional __atas_bawah)
   (if __atas_bawah (setq _atas_bawah __atas_bawah)) _atas_bawah)
  (:l2
   (&optional __l2)
   (if __l2 (setq _l2 __l2)) _l2)
  (:r2
   (&optional __r2)
   (if __r2 (setq _r2 __r2)) _r2)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; uint32 _button
    4
    ;; int32 _left_js_x
    4
    ;; int32 _left_js_y
    4
    ;; uint16 _right_js_x
    2
    ;; uint16 _right_js_y
    2
    ;; int16 _kiri_kanan
    2
    ;; int16 _atas_bawah
    2
    ;; int32 _l2
    4
    ;; int32 _r2
    4
    ;; uint8 _event
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _button
       (write-long _button s)
     ;; int32 _left_js_x
       (write-long _left_js_x s)
     ;; int32 _left_js_y
       (write-long _left_js_y s)
     ;; uint16 _right_js_x
       (write-word _right_js_x s)
     ;; uint16 _right_js_y
       (write-word _right_js_y s)
     ;; int16 _kiri_kanan
       (write-word _kiri_kanan s)
     ;; int16 _atas_bawah
       (write-word _atas_bawah s)
     ;; int32 _l2
       (write-long _l2 s)
     ;; int32 _r2
       (write-long _r2 s)
     ;; uint8 _event
       (write-byte _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _button
     (setq _button (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_js_x
     (setq _left_js_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_js_y
     (setq _left_js_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _right_js_x
     (setq _right_js_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_js_y
     (setq _right_js_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _kiri_kanan
     (setq _kiri_kanan (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _atas_bawah
     (setq _atas_bawah (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _l2
     (setq _l2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _r2
     (setq _r2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _event
     (setq _event (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_er::js :md5sum-) "27307fc51b0d7a911c746c6fbd3def00")
(setf (get ros_er::js :datatype-) "ros_er/js")
(setf (get ros_er::js :definition-)
      "uint32 button
int32 left_js_x
int32 left_js_y
uint16 right_js_x
uint16 right_js_y
int16 kiri_kanan
int16 atas_bawah
int32 l2
int32 r2
uint8 event
")



(provide :ros_er/js "27307fc51b0d7a911c746c6fbd3def00")


