
(cl:in-package :asdf)

(defsystem "ros_er-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "commands_srv" :depends-on ("_package_commands_srv"))
    (:file "_package_commands_srv" :depends-on ("_package"))
  ))