; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude steering_ctrl_fb.msg.html

(cl:defclass <steering_ctrl_fb> (roslisp-msg-protocol:ros-message)
  ((steering_ctrl_fb_gear
    :reader steering_ctrl_fb_gear
    :initarg :steering_ctrl_fb_gear
    :type cl:fixnum
    :initform 0)
   (steering_ctrl_fb_velocity
    :reader steering_ctrl_fb_velocity
    :initarg :steering_ctrl_fb_velocity
    :type cl:float
    :initform 0.0)
   (steering_ctrl_fb_steering
    :reader steering_ctrl_fb_steering
    :initarg :steering_ctrl_fb_steering
    :type cl:float
    :initform 0.0))
)

(cl:defclass steering_ctrl_fb (<steering_ctrl_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <steering_ctrl_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'steering_ctrl_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<steering_ctrl_fb> is deprecated: use yhs_can_msgs-msg:steering_ctrl_fb instead.")))

(cl:ensure-generic-function 'steering_ctrl_fb_gear-val :lambda-list '(m))
(cl:defmethod steering_ctrl_fb_gear-val ((m <steering_ctrl_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:steering_ctrl_fb_gear-val is deprecated.  Use yhs_can_msgs-msg:steering_ctrl_fb_gear instead.")
  (steering_ctrl_fb_gear m))

(cl:ensure-generic-function 'steering_ctrl_fb_velocity-val :lambda-list '(m))
(cl:defmethod steering_ctrl_fb_velocity-val ((m <steering_ctrl_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:steering_ctrl_fb_velocity-val is deprecated.  Use yhs_can_msgs-msg:steering_ctrl_fb_velocity instead.")
  (steering_ctrl_fb_velocity m))

(cl:ensure-generic-function 'steering_ctrl_fb_steering-val :lambda-list '(m))
(cl:defmethod steering_ctrl_fb_steering-val ((m <steering_ctrl_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:steering_ctrl_fb_steering-val is deprecated.  Use yhs_can_msgs-msg:steering_ctrl_fb_steering instead.")
  (steering_ctrl_fb_steering m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <steering_ctrl_fb>) ostream)
  "Serializes a message object of type '<steering_ctrl_fb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_ctrl_fb_gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_ctrl_fb_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_ctrl_fb_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <steering_ctrl_fb>) istream)
  "Deserializes a message object of type '<steering_ctrl_fb>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_ctrl_fb_gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_ctrl_fb_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_ctrl_fb_steering) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<steering_ctrl_fb>)))
  "Returns string type for a message object of type '<steering_ctrl_fb>"
  "yhs_can_msgs/steering_ctrl_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'steering_ctrl_fb)))
  "Returns string type for a message object of type 'steering_ctrl_fb"
  "yhs_can_msgs/steering_ctrl_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<steering_ctrl_fb>)))
  "Returns md5sum for a message object of type '<steering_ctrl_fb>"
  "3c48518d11e7c77d61a72dc84b8f68b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'steering_ctrl_fb)))
  "Returns md5sum for a message object of type 'steering_ctrl_fb"
  "3c48518d11e7c77d61a72dc84b8f68b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<steering_ctrl_fb>)))
  "Returns full string definition for message of type '<steering_ctrl_fb>"
  (cl:format cl:nil "uint8    steering_ctrl_fb_gear~%float32  steering_ctrl_fb_velocity~%float32  steering_ctrl_fb_steering~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'steering_ctrl_fb)))
  "Returns full string definition for message of type 'steering_ctrl_fb"
  (cl:format cl:nil "uint8    steering_ctrl_fb_gear~%float32  steering_ctrl_fb_velocity~%float32  steering_ctrl_fb_steering~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <steering_ctrl_fb>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <steering_ctrl_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'steering_ctrl_fb
    (cl:cons ':steering_ctrl_fb_gear (steering_ctrl_fb_gear msg))
    (cl:cons ':steering_ctrl_fb_velocity (steering_ctrl_fb_velocity msg))
    (cl:cons ':steering_ctrl_fb_steering (steering_ctrl_fb_steering msg))
))
