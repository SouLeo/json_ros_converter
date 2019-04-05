;; Auto-generated. Do not edit!


(when (boundp 'temoto2_rosmsg_to_json::semantic_frame)
  (if (not (find-package "TEMOTO2_ROSMSG_TO_JSON"))
    (make-package "TEMOTO2_ROSMSG_TO_JSON"))
  (shadow 'semantic_frame (find-package "TEMOTO2_ROSMSG_TO_JSON")))
(unless (find-package "TEMOTO2_ROSMSG_TO_JSON::SEMANTIC_FRAME")
  (make-package "TEMOTO2_ROSMSG_TO_JSON::SEMANTIC_FRAME"))

(in-package "ROS")
;;//! \htmlinclude semantic_frame.msg.html


(defclass temoto2_rosmsg_to_json::semantic_frame
  :super ros::object
  :slots (_action _parametres _order ))

(defmethod temoto2_rosmsg_to_json::semantic_frame
  (:init
   (&key
    ((:action __action) "")
    ((:parametres __parametres) "")
    ((:order __order) 0)
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _parametres (string __parametres))
   (setq _order (round __order))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:parametres
   (&optional __parametres)
   (if __parametres (setq _parametres __parametres)) _parametres)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _parametres
    4 (length _parametres)
    ;; int32 _order
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _parametres
       (write-long (length _parametres) s) (princ _parametres s)
     ;; int32 _order
       (write-long _order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parametres
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parametres (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _order
     (setq _order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get temoto2_rosmsg_to_json::semantic_frame :md5sum-) "c0e215789ca6fde74fb72c48f7ad63bf")
(setf (get temoto2_rosmsg_to_json::semantic_frame :datatype-) "temoto2_rosmsg_to_json/semantic_frame")
(setf (get temoto2_rosmsg_to_json::semantic_frame :definition-)
      "string action
string parametres
int32 order

")



(provide :temoto2_rosmsg_to_json/semantic_frame "c0e215789ca6fde74fb72c48f7ad63bf")


