; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude bms_flag_fb.msg.html

(cl:defclass <bms_flag_fb> (roslisp-msg-protocol:ros-message)
  ((bms_flag_fb_soc
    :reader bms_flag_fb_soc
    :initarg :bms_flag_fb_soc
    :type cl:fixnum
    :initform 0)
   (bms_flag_fb_single_ov
    :reader bms_flag_fb_single_ov
    :initarg :bms_flag_fb_single_ov
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_single_uv
    :reader bms_flag_fb_single_uv
    :initarg :bms_flag_fb_single_uv
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_ov
    :reader bms_flag_fb_ov
    :initarg :bms_flag_fb_ov
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_uv
    :reader bms_flag_fb_uv
    :initarg :bms_flag_fb_uv
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_charge_ot
    :reader bms_flag_fb_charge_ot
    :initarg :bms_flag_fb_charge_ot
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_charge_ut
    :reader bms_flag_fb_charge_ut
    :initarg :bms_flag_fb_charge_ut
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_discharge_ot
    :reader bms_flag_fb_discharge_ot
    :initarg :bms_flag_fb_discharge_ot
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_discharge_ut
    :reader bms_flag_fb_discharge_ut
    :initarg :bms_flag_fb_discharge_ut
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_charge_oc
    :reader bms_flag_fb_charge_oc
    :initarg :bms_flag_fb_charge_oc
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_discharge_oc
    :reader bms_flag_fb_discharge_oc
    :initarg :bms_flag_fb_discharge_oc
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_short
    :reader bms_flag_fb_short
    :initarg :bms_flag_fb_short
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_ic_error
    :reader bms_flag_fb_ic_error
    :initarg :bms_flag_fb_ic_error
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_lock_mos
    :reader bms_flag_fb_lock_mos
    :initarg :bms_flag_fb_lock_mos
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_charge_flag
    :reader bms_flag_fb_charge_flag
    :initarg :bms_flag_fb_charge_flag
    :type cl:boolean
    :initform cl:nil)
   (bms_flag_fb_hight_temperature
    :reader bms_flag_fb_hight_temperature
    :initarg :bms_flag_fb_hight_temperature
    :type cl:float
    :initform 0.0)
   (bms_flag_fb_low_temperature
    :reader bms_flag_fb_low_temperature
    :initarg :bms_flag_fb_low_temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass bms_flag_fb (<bms_flag_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bms_flag_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bms_flag_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<bms_flag_fb> is deprecated: use yhs_can_msgs-msg:bms_flag_fb instead.")))

(cl:ensure-generic-function 'bms_flag_fb_soc-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_soc-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_soc-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_soc instead.")
  (bms_flag_fb_soc m))

(cl:ensure-generic-function 'bms_flag_fb_single_ov-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_single_ov-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_single_ov-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_single_ov instead.")
  (bms_flag_fb_single_ov m))

(cl:ensure-generic-function 'bms_flag_fb_single_uv-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_single_uv-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_single_uv-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_single_uv instead.")
  (bms_flag_fb_single_uv m))

(cl:ensure-generic-function 'bms_flag_fb_ov-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_ov-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_ov-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_ov instead.")
  (bms_flag_fb_ov m))

(cl:ensure-generic-function 'bms_flag_fb_uv-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_uv-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_uv-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_uv instead.")
  (bms_flag_fb_uv m))

(cl:ensure-generic-function 'bms_flag_fb_charge_ot-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_charge_ot-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_charge_ot-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_charge_ot instead.")
  (bms_flag_fb_charge_ot m))

(cl:ensure-generic-function 'bms_flag_fb_charge_ut-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_charge_ut-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_charge_ut-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_charge_ut instead.")
  (bms_flag_fb_charge_ut m))

(cl:ensure-generic-function 'bms_flag_fb_discharge_ot-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_discharge_ot-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_discharge_ot-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_discharge_ot instead.")
  (bms_flag_fb_discharge_ot m))

(cl:ensure-generic-function 'bms_flag_fb_discharge_ut-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_discharge_ut-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_discharge_ut-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_discharge_ut instead.")
  (bms_flag_fb_discharge_ut m))

(cl:ensure-generic-function 'bms_flag_fb_charge_oc-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_charge_oc-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_charge_oc-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_charge_oc instead.")
  (bms_flag_fb_charge_oc m))

(cl:ensure-generic-function 'bms_flag_fb_discharge_oc-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_discharge_oc-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_discharge_oc-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_discharge_oc instead.")
  (bms_flag_fb_discharge_oc m))

(cl:ensure-generic-function 'bms_flag_fb_short-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_short-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_short-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_short instead.")
  (bms_flag_fb_short m))

(cl:ensure-generic-function 'bms_flag_fb_ic_error-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_ic_error-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_ic_error-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_ic_error instead.")
  (bms_flag_fb_ic_error m))

(cl:ensure-generic-function 'bms_flag_fb_lock_mos-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_lock_mos-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_lock_mos-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_lock_mos instead.")
  (bms_flag_fb_lock_mos m))

(cl:ensure-generic-function 'bms_flag_fb_charge_flag-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_charge_flag-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_charge_flag-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_charge_flag instead.")
  (bms_flag_fb_charge_flag m))

(cl:ensure-generic-function 'bms_flag_fb_hight_temperature-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_hight_temperature-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_hight_temperature-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_hight_temperature instead.")
  (bms_flag_fb_hight_temperature m))

(cl:ensure-generic-function 'bms_flag_fb_low_temperature-val :lambda-list '(m))
(cl:defmethod bms_flag_fb_low_temperature-val ((m <bms_flag_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:bms_flag_fb_low_temperature-val is deprecated.  Use yhs_can_msgs-msg:bms_flag_fb_low_temperature instead.")
  (bms_flag_fb_low_temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bms_flag_fb>) ostream)
  "Serializes a message object of type '<bms_flag_fb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bms_flag_fb_soc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_single_ov) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_single_uv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_ov) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_uv) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_charge_ot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_charge_ut) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_discharge_ot) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_discharge_ut) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_charge_oc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_discharge_oc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_short) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_ic_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_lock_mos) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bms_flag_fb_charge_flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bms_flag_fb_hight_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bms_flag_fb_low_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bms_flag_fb>) istream)
  "Deserializes a message object of type '<bms_flag_fb>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bms_flag_fb_soc)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_single_ov) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_single_uv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_ov) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_uv) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_charge_ot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_charge_ut) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_discharge_ot) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_discharge_ut) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_charge_oc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_discharge_oc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_short) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_ic_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_lock_mos) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_charge_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_hight_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bms_flag_fb_low_temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bms_flag_fb>)))
  "Returns string type for a message object of type '<bms_flag_fb>"
  "yhs_can_msgs/bms_flag_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bms_flag_fb)))
  "Returns string type for a message object of type 'bms_flag_fb"
  "yhs_can_msgs/bms_flag_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bms_flag_fb>)))
  "Returns md5sum for a message object of type '<bms_flag_fb>"
  "0eca005b4236cdc33bec1ff0de5c3a0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bms_flag_fb)))
  "Returns md5sum for a message object of type 'bms_flag_fb"
  "0eca005b4236cdc33bec1ff0de5c3a0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bms_flag_fb>)))
  "Returns full string definition for message of type '<bms_flag_fb>"
  (cl:format cl:nil "uint8 bms_flag_fb_soc~%bool bms_flag_fb_single_ov~%bool bms_flag_fb_single_uv~%bool bms_flag_fb_ov~%bool bms_flag_fb_uv~%bool bms_flag_fb_charge_ot~%bool bms_flag_fb_charge_ut~%bool bms_flag_fb_discharge_ot~%bool bms_flag_fb_discharge_ut~%bool bms_flag_fb_charge_oc~%bool bms_flag_fb_discharge_oc~%bool bms_flag_fb_short~%bool bms_flag_fb_ic_error~%bool bms_flag_fb_lock_mos~%bool bms_flag_fb_charge_flag~%float32 bms_flag_fb_hight_temperature~%float32 bms_flag_fb_low_temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bms_flag_fb)))
  "Returns full string definition for message of type 'bms_flag_fb"
  (cl:format cl:nil "uint8 bms_flag_fb_soc~%bool bms_flag_fb_single_ov~%bool bms_flag_fb_single_uv~%bool bms_flag_fb_ov~%bool bms_flag_fb_uv~%bool bms_flag_fb_charge_ot~%bool bms_flag_fb_charge_ut~%bool bms_flag_fb_discharge_ot~%bool bms_flag_fb_discharge_ut~%bool bms_flag_fb_charge_oc~%bool bms_flag_fb_discharge_oc~%bool bms_flag_fb_short~%bool bms_flag_fb_ic_error~%bool bms_flag_fb_lock_mos~%bool bms_flag_fb_charge_flag~%float32 bms_flag_fb_hight_temperature~%float32 bms_flag_fb_low_temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bms_flag_fb>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bms_flag_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'bms_flag_fb
    (cl:cons ':bms_flag_fb_soc (bms_flag_fb_soc msg))
    (cl:cons ':bms_flag_fb_single_ov (bms_flag_fb_single_ov msg))
    (cl:cons ':bms_flag_fb_single_uv (bms_flag_fb_single_uv msg))
    (cl:cons ':bms_flag_fb_ov (bms_flag_fb_ov msg))
    (cl:cons ':bms_flag_fb_uv (bms_flag_fb_uv msg))
    (cl:cons ':bms_flag_fb_charge_ot (bms_flag_fb_charge_ot msg))
    (cl:cons ':bms_flag_fb_charge_ut (bms_flag_fb_charge_ut msg))
    (cl:cons ':bms_flag_fb_discharge_ot (bms_flag_fb_discharge_ot msg))
    (cl:cons ':bms_flag_fb_discharge_ut (bms_flag_fb_discharge_ut msg))
    (cl:cons ':bms_flag_fb_charge_oc (bms_flag_fb_charge_oc msg))
    (cl:cons ':bms_flag_fb_discharge_oc (bms_flag_fb_discharge_oc msg))
    (cl:cons ':bms_flag_fb_short (bms_flag_fb_short msg))
    (cl:cons ':bms_flag_fb_ic_error (bms_flag_fb_ic_error msg))
    (cl:cons ':bms_flag_fb_lock_mos (bms_flag_fb_lock_mos msg))
    (cl:cons ':bms_flag_fb_charge_flag (bms_flag_fb_charge_flag msg))
    (cl:cons ':bms_flag_fb_hight_temperature (bms_flag_fb_hight_temperature msg))
    (cl:cons ':bms_flag_fb_low_temperature (bms_flag_fb_low_temperature msg))
))
