
(cl:in-package :asdf)

(defsystem "object_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Demo" :depends-on ("_package_Demo"))
    (:file "_package_Demo" :depends-on ("_package"))
    (:file "Test" :depends-on ("_package_Test"))
    (:file "_package_Test" :depends-on ("_package"))
  ))