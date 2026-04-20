; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude steering_ctrl_cmd.msg.html

(cl:defclass <steering_ctrl_cmd> (roslisp-msg-protocol:ros-message)
  ((ctrl_cmd_gear
    :reader ctrl_cmd_gear
    :initarg :ctrl_cmd_gear
    :type cl:fixnum
    :initform 0)
   (steering_ctrl_cmd_velocity
    :reader steering_ctrl_cmd_velocity
    :initarg :steering_ctrl_cmd_velocity
    :type cl:float
    :initform 0.0)
   (steering_ctrl_cmd_steering
    :reader steering_ctrl_cmd_steering
    :initarg :steering_ctrl_cmd_steering
    :type cl:float
    :initform 0.0))
)

(cl:defclass steering_ctrl_cmd (<steering_ctrl_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <steering_ctrl_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'steering_ctrl_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<steering_ctrl_cmd> is deprecated: use yhs_can_msgs-msg:steering_ctrl_cmd instead.")))

(cl:ensure-generic-function 'ctrl_cmd_gear-val :lambda-list '(m))
(cl:defmethod ctrl_cmd_gear-val ((m <steering_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:ctrl_cmd_gear-val is deprecated.  Use yhs_can_msgs-msg:ctrl_cmd_gear instead.")
  (ctrl_cmd_gear m))

(cl:ensure-generic-function 'steering_ctrl_cmd_velocity-val :lambda-list '(m))
(cl:defmethod steering_ctrl_cmd_velocity-val ((m <steering_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:steering_ctrl_cmd_velocity-val is deprecated.  Use yhs_can_msgs-msg:steering_ctrl_cmd_velocity instead.")
  (steering_ctrl_cmd_velocity m))

(cl:ensure-generic-function 'steering_ctrl_cmd_steering-val :lambda-list '(m))
(cl:defmethod steering_ctrl_cmd_steering-val ((m <steering_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:steering_ctrl_cmd_steering-val is deprecated.  Use yhs_can_msgs-msg:steering_ctrl_cmd_steering instead.")
  (steering_ctrl_cmd_steering m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <steering_ctrl_cmd>) ostream)
  "Serializes a message object of type '<steering_ctrl_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_cmd_gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_ctrl_cmd_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_ctrl_cmd_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <steering_ctrl_cmd>) istream)
  "Deserializes a message object of type '<steering_ctrl_cmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_cmd_gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_ctrl_cmd_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_ctrl_cmd_steering) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<steering_ctrl_cmd>)))
  "Returns string type for a message object of type '<steering_ctrl_cmd>"
  "yhs_can_msgs/steering_ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'steering_ctrl_cmd)))
  "Returns string type for a message object of type 'steering_ctrl_cmd"
  "yhs_can_msgs/steering_ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<steering_ctrl_cmd>)))
  "Returns md5sum for a message object of type '<steering_ctrl_cmd>"
  "b8e9d8788608c044b8a724447419e8d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'steering_ctrl_cmd)))
  "Returns md5sum for a message object of type 'steering_ctrl_cmd"
  "b8e9d8788608c044b8a724447419e8d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<steering_ctrl_cmd>)))
  "Returns full string definition for message of type '<steering_ctrl_cmd>"
  (cl:format cl:nil "uint8    ctrl_cmd_gear~%float32  steering_ctrl_cmd_velocity~%float32  steering_ctrl_cmd_steering~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'steering_ctrl_cmd)))
  "Returns full string definition for message of type 'steering_ctrl_cmd"
  (cl:format cl:nil "uint8    ctrl_cmd_gear~%float32  steering_ctrl_cmd_velocity~%float32  steering_ctrl_cmd_steering~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <steering_ctrl_cmd>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <steering_ctrl_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'steering_ctrl_cmd
    (cl:cons ':ctrl_cmd_gear (ctrl_cmd_gear msg))
    (cl:cons ':steering_ctrl_cmd_velocity (steering_ctrl_cmd_velocity msg))
    (cl:cons ':steering_ctrl_cmd_steering (steering_ctrl_cmd_steering msg))
))
