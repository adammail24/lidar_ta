
(cl:in-package :asdf)

(defsystem "rosRR_2023-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "lidar_aim" :depends-on ("_package_lidar_aim"))
    (:file "_package_lidar_aim" :depends-on ("_package"))
  ))