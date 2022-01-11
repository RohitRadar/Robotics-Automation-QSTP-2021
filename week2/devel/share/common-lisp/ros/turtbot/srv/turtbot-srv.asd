
(cl:in-package :asdf)

(defsystem "turtbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "angvel" :depends-on ("_package_angvel"))
    (:file "_package_angvel" :depends-on ("_package"))
  ))