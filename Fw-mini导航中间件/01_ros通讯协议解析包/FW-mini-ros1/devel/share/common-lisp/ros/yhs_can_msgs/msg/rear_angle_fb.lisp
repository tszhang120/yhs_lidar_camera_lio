; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude rear_angle_fb.msg.html

(cl:defclass <rear_angle_fb> (roslisp-msg-protocol:ros-message)
  ((rear_angle_fb_l
    :reader rear_angle_fb_l
    :initarg :rear_angle_fb_l
    :type cl:float
    :initform 0.0)
   (rear_angle_fb_r
    :reader rear_angle_fb_r
    :initarg :rear_angle_fb_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass rear_angle_fb (<rear_angle_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rear_angle_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rear_angle_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<rear_angle_fb> is deprecated: use yhs_can_msgs-msg:rear_angle_fb instead.")))

(cl:ensure-generic-function 'rear_angle_fb_l-val :lambda-list '(m))
(cl:defmethod rear_angle_fb_l-val ((m <rear_angle_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:rear_angle_fb_l-val is deprecated.  Use yhs_can_msgs-msg:rear_angle_fb_l instead.")
  (rear_angle_fb_l m))

(cl:ensure-generic-function 'rear_angle_fb_r-val :lambda-list '(m))
(cl:defmethod rear_angle_fb_r-val ((m <rear_angle_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:rear_angle_fb_r-val is deprecated.  Use yhs_can_msgs-msg:rear_angle_fb_r instead.")
  (rear_angle_fb_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rear_angle_fb>) ostream)
  "Serializes a message object of type '<rear_angle_fb>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_angle_fb_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_angle_fb_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rear_angle_fb>) istream)
  "Deserializes a message object of type '<rear_angle_fb>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_angle_fb_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_angle_fb_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rear_angle_fb>)))
  "Returns string type for a message object of type '<rear_angle_fb>"
  "yhs_can_msgs/rear_angle_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rear_angle_fb)))
  "Returns string type for a message object of type 'rear_angle_fb"
  "yhs_can_msgs/rear_angle_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rear_angle_fb>)))
  "Returns md5sum for a message object of type '<rear_angle_fb>"
  "ad4dde667634fd5c9a4f1ca6f05e41e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rear_angle_fb)))
  "Returns md5sum for a message object of type 'rear_angle_fb"
  "ad4dde667634fd5c9a4f1ca6f05e41e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rear_angle_fb>)))
  "Returns full string definition for message of type '<rear_angle_fb>"
  (cl:format cl:nil "float32  rear_angle_fb_l~%float32  rear_angle_fb_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rear_angle_fb)))
  "Returns full string definition for message of type 'rear_angle_fb"
  (cl:format cl:nil "float32  rear_angle_fb_l~%float32  rear_angle_fb_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rear_angle_fb>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rear_angle_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'rear_angle_fb
    (cl:cons ':rear_angle_fb_l (rear_angle_fb_l msg))
    (cl:cons ':rear_angle_fb_r (rear_angle_fb_r msg))
))
