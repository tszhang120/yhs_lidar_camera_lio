; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude bms_fb.msg.html

(cl:defclass <bms_fb> (roslisp-msg-protocol:ros-message)
  ((bms_fb_voltage
    :reader bms_fb_voltage
    :initarg :bms_fb_voltage
    :type cl:float
    :initform 0.0)
   (bms_fb_current
    :reader bms_fb_current
    :initarg :bms_fb_current
    :type cl:float
    :initform 0.0)
   (bms_fb_remaining_capacity
    :reader bms_fb_remaining_capacity
    :initarg :bms_fb_remaining_capacity
    :type cl:float
    :initform 0.0))
)

(cl:defclass bms_fb (<bms_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bms_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bms_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<bms_fb> is deprecated: use yhs_can_msgs-msg:bms_fb instead.")))

(cl:ensure-generic-function 'bms_fb_voltage-val :lambda-list '(m))
(cl:defmethod bms_fb_voltage-val ((m <bms_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_fb_voltage-val is deprecated.  Use yhs_can_msgs-msg:bms_fb_voltage instead.")
  (bms_fb_voltage m))

(cl:ensure-generic-function 'bms_fb_current-val :lambda-list '(m))
(cl:defmethod bms_fb_current-val ((m <bms_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_fb_current-val is deprecated.  Use yhs_can_msgs-msg:bms_fb_current instead.")
  (bms_fb_current m))

(cl:ensure-generic-function 'bms_fb_remaining_capacity-val :lambda-list '(m))
(cl:defmethod bms_fb_remaining_capacity-val ((m <bms_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_fb_remaining_capacity-val is deprecated.  Use yhs_can_msgs-msg:bms_fb_remaining_capacity instead.")
  (bms_fb_remaining_capacity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bms_fb>) ostream)
  "Serializes a message object of type '<bms_fb>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bms_fb_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bms_fb_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bms_fb_remaining_capacity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bms_fb>) istream)
  "Deserializes a message object of type '<bms_fb>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_fb_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_fb_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_fb_remaining_capacity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bms_fb>)))
  "Returns string type for a message object of type '<bms_fb>"
  "yhs_can_msgs/bms_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bms_fb)))
  "Returns string type for a message object of type 'bms_fb"
  "yhs_can_msgs/bms_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bms_fb>)))
  "Returns md5sum for a message object of type '<bms_fb>"
  "931076749ca0fa82fb86cdb07acbd6a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bms_fb)))
  "Returns md5sum for a message object of type 'bms_fb"
  "931076749ca0fa82fb86cdb07acbd6a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bms_fb>)))
  "Returns full string definition for message of type '<bms_fb>"
  (cl:format cl:nil "float32 bms_fb_voltage~%float32 bms_fb_current~%float32 bms_fb_remaining_capacity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bms_fb)))
  "Returns full string definition for message of type 'bms_fb"
  (cl:format cl:nil "float32 bms_fb_voltage~%float32 bms_fb_current~%float32 bms_fb_remaining_capacity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bms_fb>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bms_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'bms_fb
    (cl:cons ':bms_fb_voltage (bms_fb_voltage msg))
    (cl:cons ':bms_fb_current (bms_fb_current msg))
    (cl:cons ':bms_fb_remaining_capacity (bms_fb_remaining_capacity msg))
))
