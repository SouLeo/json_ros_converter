
(cl:in-package :asdf)

(defsystem "temoto2_rosmsg_to_json-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "semantic_frame" :depends-on ("_package_semantic_frame"))
    (:file "_package_semantic_frame" :depends-on ("_package"))
  ))