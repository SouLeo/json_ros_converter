; Auto-generated. Do not edit!


(cl:in-package temoto2_rosmsg_to_json-msg)


;//! \htmlinclude semantic_frame.msg.html

(cl:defclass <semantic_frame> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (parametres
    :reader parametres
    :initarg :parametres
    :type cl:string
    :initform "")
   (order
    :reader order
    :initarg :order
    :type cl:integer
    :initform 0))
)

(cl:defclass semantic_frame (<semantic_frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <semantic_frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'semantic_frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto2_rosmsg_to_json-msg:<semantic_frame> is deprecated: use temoto2_rosmsg_to_json-msg:semantic_frame instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <semantic_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto2_rosmsg_to_json-msg:action-val is deprecated.  Use temoto2_rosmsg_to_json-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'parametres-val :lambda-list '(m))
(cl:defmethod parametres-val ((m <semantic_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto2_rosmsg_to_json-msg:parametres-val is deprecated.  Use temoto2_rosmsg_to_json-msg:parametres instead.")
  (parametres m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <semantic_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto2_rosmsg_to_json-msg:order-val is deprecated.  Use temoto2_rosmsg_to_json-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <semantic_frame>) ostream)
  "Serializes a message object of type '<semantic_frame>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parametres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parametres))
  (cl:let* ((signed (cl:slot-value msg 'order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <semantic_frame>) istream)
  "Deserializes a message object of type '<semantic_frame>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parametres) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parametres) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<semantic_frame>)))
  "Returns string type for a message object of type '<semantic_frame>"
  "temoto2_rosmsg_to_json/semantic_frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'semantic_frame)))
  "Returns string type for a message object of type 'semantic_frame"
  "temoto2_rosmsg_to_json/semantic_frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<semantic_frame>)))
  "Returns md5sum for a message object of type '<semantic_frame>"
  "c0e215789ca6fde74fb72c48f7ad63bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'semantic_frame)))
  "Returns md5sum for a message object of type 'semantic_frame"
  "c0e215789ca6fde74fb72c48f7ad63bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<semantic_frame>)))
  "Returns full string definition for message of type '<semantic_frame>"
  (cl:format cl:nil "string action~%string parametres~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'semantic_frame)))
  "Returns full string definition for message of type 'semantic_frame"
  (cl:format cl:nil "string action~%string parametres~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <semantic_frame>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'parametres))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <semantic_frame>))
  "Converts a ROS message object to a list"
  (cl:list 'semantic_frame
    (cl:cons ':action (action msg))
    (cl:cons ':parametres (parametres msg))
    (cl:cons ':order (order msg))
))
