; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude lr_wheel_fb.msg.html

(cl:defclass <lr_wheel_fb> (roslisp-msg-protocol:ros-message)
  ((lr_wheel_fb_velocity
    :reader lr_wheel_fb_velocity
    :initarg :lr_wheel_fb_velocity
    :type cl:float
    :initform 0.0)
   (lr_wheel_fb_pulse
    :reader lr_wheel_fb_pulse
    :initarg :lr_wheel_fb_pulse
    :type cl:integer
    :initform 0))
)

(cl:defclass lr_wheel_fb (<lr_wheel_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lr_wheel_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lr_wheel_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<lr_wheel_fb> is deprecated: use yhs_can_msgs-msg:lr_wheel_fb instead.")))

(cl:ensure-generic-function 'lr_wheel_fb_velocity-val :lambda-list '(m))
(cl:defmethod lr_wheel_fb_velocity-val ((m <lr_wheel_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:lr_wheel_fb_velocity-val is deprecated.  Use yhs_can_msgs-msg:lr_wheel_fb_velocity instead.")
  (lr_wheel_fb_velocity m))

(cl:ensure-generic-function 'lr_wheel_fb_pulse-val :lambda-list '(m))
(cl:defmethod lr_wheel_fb_pulse-val ((m <lr_wheel_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:lr_wheel_fb_pulse-val is deprecated.  Use yhs_can_msgs-msg:lr_wheel_fb_pulse instead.")
  (lr_wheel_fb_pulse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lr_wheel_fb>) ostream)
  "Serializes a message object of type '<lr_wheel_fb>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lr_wheel_fb_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lr_wheel_fb_pulse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lr_wheel_fb>) istream)
  "Deserializes a message object of type '<lr_wheel_fb>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lr_wheel_fb_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lr_wheel_fb_pulse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lr_wheel_fb>)))
  "Returns string type for a message object of type '<lr_wheel_fb>"
  "yhs_can_msgs/lr_wheel_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lr_wheel_fb)))
  "Returns string type for a message object of type 'lr_wheel_fb"
  "yhs_can_msgs/lr_wheel_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lr_wheel_fb>)))
  "Returns md5sum for a message object of type '<lr_wheel_fb>"
  "b0f35d69705bd36b5cd5a57cb194cb97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lr_wheel_fb)))
  "Returns md5sum for a message object of type 'lr_wheel_fb"
  "b0f35d69705bd36b5cd5a57cb194cb97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lr_wheel_fb>)))
  "Returns full string definition for message of type '<lr_wheel_fb>"
  (cl:format cl:nil "float32    lr_wheel_fb_velocity~%int32      lr_wheel_fb_pulse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lr_wheel_fb)))
  "Returns full string definition for message of type 'lr_wheel_fb"
  (cl:format cl:nil "float32    lr_wheel_fb_velocity~%int32      lr_wheel_fb_pulse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lr_wheel_fb>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lr_wheel_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'lr_wheel_fb
    (cl:cons ':lr_wheel_fb_velocity (lr_wheel_fb_velocity msg))
    (cl:cons ':lr_wheel_fb_pulse (lr_wheel_fb_pulse msg))
))
