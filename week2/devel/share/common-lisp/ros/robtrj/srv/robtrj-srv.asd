
(cl:in-package :asdf)

(defsystem "robtrj-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msgvar" :depends-on ("_package_msgvar"))
    (:file "_package_msgvar" :depends-on ("_package"))
  ))