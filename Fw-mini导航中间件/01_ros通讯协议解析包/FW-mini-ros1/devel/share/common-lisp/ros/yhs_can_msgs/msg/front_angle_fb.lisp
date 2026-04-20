; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude front_angle_fb.msg.html

(cl:defclass <front_angle_fb> (roslisp-msg-protocol:ros-message)
  ((front_angle_fb_l
    :reader front_angle_fb_l
    :initarg :front_angle_fb_l
    :type cl:float
    :initform 0.0)
   (front_angle_fb_r
    :reader front_angle_fb_r
    :initarg :front_angle_fb_r
    :type cl:float
    :initform 0.0))
)

(cl:defclass front_angle_fb (<front_angle_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <front_angle_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'front_angle_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<front_angle_fb> is deprecated: use yhs_can_msgs-msg:front_angle_fb instead.")))

(cl:ensure-generic-function 'front_angle_fb_l-val :lambda-list '(m))
(cl:defmethod front_angle_fb_l-val ((m <front_angle_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:front_angle_fb_l-val is deprecated.  Use yhs_can_msgs-msg:front_angle_fb_l instead.")
  (front_angle_fb_l m))

(cl:ensure-generic-function 'front_angle_fb_r-val :lambda-list '(m))
(cl:defmethod front_angle_fb_r-val ((m <front_angle_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:front_angle_fb_r-val is deprecated.  Use yhs_can_msgs-msg:front_angle_fb_r instead.")
  (front_angle_fb_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <front_angle_fb>) ostream)
  "Serializes a message object of type '<front_angle_fb>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_angle_fb_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_angle_fb_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <front_angle_fb>) istream)
  "Deserializes a message object of type '<front_angle_fb>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_angle_fb_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_angle_fb_r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<front_angle_fb>)))
  "Returns string type for a message object of type '<front_angle_fb>"
  "yhs_can_msgs/front_angle_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'front_angle_fb)))
  "Returns string type for a message object of type 'front_angle_fb"
  "yhs_can_msgs/front_angle_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<front_angle_fb>)))
  "Returns md5sum for a message object of type '<front_angle_fb>"
  "d682109cd37a69f95f75010fef867d75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'front_angle_fb)))
  "Returns md5sum for a message object of type 'front_angle_fb"
  "d682109cd37a69f95f75010fef867d75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<front_angle_fb>)))
  "Returns full string definition for message of type '<front_angle_fb>"
  (cl:format cl:nil "float32  front_angle_fb_l~%float32  front_angle_fb_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'front_angle_fb)))
  "Returns full string definition for message of type 'front_angle_fb"
  (cl:format cl:nil "float32  front_angle_fb_l~%float32  front_angle_fb_r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <front_angle_fb>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <front_angle_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'front_angle_fb
    (cl:cons ':front_angle_fb_l (front_angle_fb_l msg))
    (cl:cons ':front_angle_fb_r (front_angle_fb_r msg))
))
