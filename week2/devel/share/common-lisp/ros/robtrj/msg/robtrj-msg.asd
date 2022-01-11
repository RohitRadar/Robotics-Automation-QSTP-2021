
(cl:in-package :asdf)

(defsystem "robtrj-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "var" :depends-on ("_package_var"))
    (:file "_package_var" :depends-on ("_package"))
  ))