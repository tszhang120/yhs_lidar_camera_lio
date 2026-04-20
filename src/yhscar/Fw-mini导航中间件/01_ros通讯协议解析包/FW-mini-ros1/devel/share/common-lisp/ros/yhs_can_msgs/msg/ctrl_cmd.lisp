; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude ctrl_cmd.msg.html

(cl:defclass <ctrl_cmd> (roslisp-msg-protocol:ros-message)
  ((ctrl_cmd_gear
    :reader ctrl_cmd_gear
    :initarg :ctrl_cmd_gear
    :type cl:fixnum
    :initform 0)
   (ctrl_cmd_x_linear
    :reader ctrl_cmd_x_linear
    :initarg :ctrl_cmd_x_linear
    :type cl:float
    :initform 0.0)
   (ctrl_cmd_z_angular
    :reader ctrl_cmd_z_angular
    :initarg :ctrl_cmd_z_angular
    :type cl:float
    :initform 0.0)
   (ctrl_cmd_y_linear
    :reader ctrl_cmd_y_linear
    :initarg :ctrl_cmd_y_linear
    :type cl:float
    :initform 0.0))
)

(cl:defclass ctrl_cmd (<ctrl_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ctrl_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ctrl_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<ctrl_cmd> is deprecated: use yhs_can_msgs-msg:ctrl_cmd instead.")))

(cl:ensure-generic-function 'ctrl_cmd_gear-val :lambda-list '(m))
(cl:defmethod ctrl_cmd_gear-val ((m <ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:ctrl_cmd_gear-val is deprecated.  Use yhs_can_msgs-msg:ctrl_cmd_gear instead.")
  (ctrl_cmd_gear m))

(cl:ensure-generic-function 'ctrl_cmd_x_linear-val :lambda-list '(m))
(cl:defmethod ctrl_cmd_x_linear-val ((m <ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:ctrl_cmd_x_linear-val is deprecated.  Use yhs_can_msgs-msg:ctrl_cmd_x_linear instead.")
  (ctrl_cmd_x_linear m))

(cl:ensure-generic-function 'ctrl_cmd_z_angular-val :lambda-list '(m))
(cl:defmethod ctrl_cmd_z_angular-val ((m <ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:ctrl_cmd_z_angular-val is deprecated.  Use yhs_can_msgs-msg:ctrl_cmd_z_angular instead.")
  (ctrl_cmd_z_angular m))

(cl:ensure-generic-function 'ctrl_cmd_y_linear-val :lambda-list '(m))
(cl:defmethod ctrl_cmd_y_linear-val ((m <ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:ctrl_cmd_y_linear-val is deprecated.  Use yhs_can_msgs-msg:ctrl_cmd_y_linear instead.")
  (ctrl_cmd_y_linear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ctrl_cmd>) ostream)
  "Serializes a message object of type '<ctrl_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_cmd_gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ctrl_cmd_x_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ctrl_cmd_z_angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ctrl_cmd_y_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ctrl_cmd>) istream)
  "Deserializes a message object of type '<ctrl_cmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_cmd_gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ctrl_cmd_x_linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ctrl_cmd_z_angular) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ctrl_cmd_y_linear) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ctrl_cmd>)))
  "Returns string type for a message object of type '<ctrl_cmd>"
  "yhs_can_msgs/ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ctrl_cmd)))
  "Returns string type for a message object of type 'ctrl_cmd"
  "yhs_can_msgs/ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ctrl_cmd>)))
  "Returns md5sum for a message object of type '<ctrl_cmd>"
  "e0a0e35016e404c7e4386a62c7a595e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ctrl_cmd)))
  "Returns md5sum for a message object of type 'ctrl_cmd"
  "e0a0e35016e404c7e4386a62c7a595e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ctrl_cmd>)))
  "Returns full string definition for message of type '<ctrl_cmd>"
  (cl:format cl:nil "uint8    ctrl_cmd_gear~%float32  ctrl_cmd_x_linear~%float32  ctrl_cmd_z_angular~%float32  ctrl_cmd_y_linear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ctrl_cmd)))
  "Returns full string definition for message of type 'ctrl_cmd"
  (cl:format cl:nil "uint8    ctrl_cmd_gear~%float32  ctrl_cmd_x_linear~%float32  ctrl_cmd_z_angular~%float32  ctrl_cmd_y_linear~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ctrl_cmd>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ctrl_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ctrl_cmd
    (cl:cons ':ctrl_cmd_gear (ctrl_cmd_gear msg))
    (cl:cons ':ctrl_cmd_x_linear (ctrl_cmd_x_linear msg))
    (cl:cons ':ctrl_cmd_z_angular (ctrl_cmd_z_angular msg))
    (cl:cons ':ctrl_cmd_y_linear (ctrl_cmd_y_linear msg))
))
