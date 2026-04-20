; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude io_fb.msg.html

(cl:defclass <io_fb> (roslisp-msg-protocol:ros-message)
  ((io_fb_lamp_ctrl
    :reader io_fb_lamp_ctrl
    :initarg :io_fb_lamp_ctrl
    :type cl:boolean
    :initform cl:nil)
   (io_fb_unlock
    :reader io_fb_unlock
    :initarg :io_fb_unlock
    :type cl:boolean
    :initform cl:nil)
   (io_fb_lower_beam_headlamp
    :reader io_fb_lower_beam_headlamp
    :initarg :io_fb_lower_beam_headlamp
    :type cl:boolean
    :initform cl:nil)
   (io_fb_upper_beam_headlamp
    :reader io_fb_upper_beam_headlamp
    :initarg :io_fb_upper_beam_headlamp
    :type cl:boolean
    :initform cl:nil)
   (io_fb_turn_lamp
    :reader io_fb_turn_lamp
    :initarg :io_fb_turn_lamp
    :type cl:fixnum
    :initform 0)
   (io_fb_braking_lamp
    :reader io_fb_braking_lamp
    :initarg :io_fb_braking_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_fb_clearance_lamp
    :reader io_fb_clearance_lamp
    :initarg :io_fb_clearance_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fog_lamp
    :reader io_fb_fog_lamp
    :initarg :io_fb_fog_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_fb_speaker
    :reader io_fb_speaker
    :initarg :io_fb_speaker
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fl_impact_sensor
    :reader io_fb_fl_impact_sensor
    :initarg :io_fb_fl_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fm_impact_sensor
    :reader io_fb_fm_impact_sensor
    :initarg :io_fb_fm_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fr_impact_sensor
    :reader io_fb_fr_impact_sensor
    :initarg :io_fb_fr_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rl_impact_sensor
    :reader io_fb_rl_impact_sensor
    :initarg :io_fb_rl_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rm_impact_sensor
    :reader io_fb_rm_impact_sensor
    :initarg :io_fb_rm_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rr_impact_sensor
    :reader io_fb_rr_impact_sensor
    :initarg :io_fb_rr_impact_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fl_drop_sensor
    :reader io_fb_fl_drop_sensor
    :initarg :io_fb_fl_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fm_drop_sensor
    :reader io_fb_fm_drop_sensor
    :initarg :io_fb_fm_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_fr_drop_sensor
    :reader io_fb_fr_drop_sensor
    :initarg :io_fb_fr_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rl_drop_sensor
    :reader io_fb_rl_drop_sensor
    :initarg :io_fb_rl_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rm_drop_sensor
    :reader io_fb_rm_drop_sensor
    :initarg :io_fb_rm_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_rr_drop_sensor
    :reader io_fb_rr_drop_sensor
    :initarg :io_fb_rr_drop_sensor
    :type cl:boolean
    :initform cl:nil)
   (io_fb_estop
    :reader io_fb_estop
    :initarg :io_fb_estop
    :type cl:boolean
    :initform cl:nil)
   (io_fb_joypad_ctrl
    :reader io_fb_joypad_ctrl
    :initarg :io_fb_joypad_ctrl
    :type cl:boolean
    :initform cl:nil)
   (io_fb_charge_state
    :reader io_fb_charge_state
    :initarg :io_fb_charge_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass io_fb (<io_fb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <io_fb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'io_fb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<io_fb> is deprecated: use yhs_can_msgs-msg:io_fb instead.")))

(cl:ensure-generic-function 'io_fb_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod io_fb_lamp_ctrl-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_lamp_ctrl-val is deprecated.  Use yhs_can_msgs-msg:io_fb_lamp_ctrl instead.")
  (io_fb_lamp_ctrl m))

(cl:ensure-generic-function 'io_fb_unlock-val :lambda-list '(m))
(cl:defmethod io_fb_unlock-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_unlock-val is deprecated.  Use yhs_can_msgs-msg:io_fb_unlock instead.")
  (io_fb_unlock m))

(cl:ensure-generic-function 'io_fb_lower_beam_headlamp-val :lambda-list '(m))
(cl:defmethod io_fb_lower_beam_headlamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_lower_beam_headlamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_lower_beam_headlamp instead.")
  (io_fb_lower_beam_headlamp m))

(cl:ensure-generic-function 'io_fb_upper_beam_headlamp-val :lambda-list '(m))
(cl:defmethod io_fb_upper_beam_headlamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_upper_beam_headlamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_upper_beam_headlamp instead.")
  (io_fb_upper_beam_headlamp m))

(cl:ensure-generic-function 'io_fb_turn_lamp-val :lambda-list '(m))
(cl:defmethod io_fb_turn_lamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_turn_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_turn_lamp instead.")
  (io_fb_turn_lamp m))

(cl:ensure-generic-function 'io_fb_braking_lamp-val :lambda-list '(m))
(cl:defmethod io_fb_braking_lamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_braking_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_braking_lamp instead.")
  (io_fb_braking_lamp m))

(cl:ensure-generic-function 'io_fb_clearance_lamp-val :lambda-list '(m))
(cl:defmethod io_fb_clearance_lamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_clearance_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_clearance_lamp instead.")
  (io_fb_clearance_lamp m))

(cl:ensure-generic-function 'io_fb_fog_lamp-val :lambda-list '(m))
(cl:defmethod io_fb_fog_lamp-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fog_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fog_lamp instead.")
  (io_fb_fog_lamp m))

(cl:ensure-generic-function 'io_fb_speaker-val :lambda-list '(m))
(cl:defmethod io_fb_speaker-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_speaker-val is deprecated.  Use yhs_can_msgs-msg:io_fb_speaker instead.")
  (io_fb_speaker m))

(cl:ensure-generic-function 'io_fb_fl_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fl_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fl_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fl_impact_sensor instead.")
  (io_fb_fl_impact_sensor m))

(cl:ensure-generic-function 'io_fb_fm_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fm_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fm_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fm_impact_sensor instead.")
  (io_fb_fm_impact_sensor m))

(cl:ensure-generic-function 'io_fb_fr_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fr_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fr_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fr_impact_sensor instead.")
  (io_fb_fr_impact_sensor m))

(cl:ensure-generic-function 'io_fb_rl_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rl_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rl_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rl_impact_sensor instead.")
  (io_fb_rl_impact_sensor m))

(cl:ensure-generic-function 'io_fb_rm_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rm_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rm_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rm_impact_sensor instead.")
  (io_fb_rm_impact_sensor m))

(cl:ensure-generic-function 'io_fb_rr_impact_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rr_impact_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rr_impact_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rr_impact_sensor instead.")
  (io_fb_rr_impact_sensor m))

(cl:ensure-generic-function 'io_fb_fl_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fl_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fl_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fl_drop_sensor instead.")
  (io_fb_fl_drop_sensor m))

(cl:ensure-generic-function 'io_fb_fm_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fm_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fm_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fm_drop_sensor instead.")
  (io_fb_fm_drop_sensor m))

(cl:ensure-generic-function 'io_fb_fr_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_fr_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_fr_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_fr_drop_sensor instead.")
  (io_fb_fr_drop_sensor m))

(cl:ensure-generic-function 'io_fb_rl_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rl_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rl_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rl_drop_sensor instead.")
  (io_fb_rl_drop_sensor m))

(cl:ensure-generic-function 'io_fb_rm_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rm_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rm_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rm_drop_sensor instead.")
  (io_fb_rm_drop_sensor m))

(cl:ensure-generic-function 'io_fb_rr_drop_sensor-val :lambda-list '(m))
(cl:defmethod io_fb_rr_drop_sensor-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_rr_drop_sensor-val is deprecated.  Use yhs_can_msgs-msg:io_fb_rr_drop_sensor instead.")
  (io_fb_rr_drop_sensor m))

(cl:ensure-generic-function 'io_fb_estop-val :lambda-list '(m))
(cl:defmethod io_fb_estop-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_estop-val is deprecated.  Use yhs_can_msgs-msg:io_fb_estop instead.")
  (io_fb_estop m))

(cl:ensure-generic-function 'io_fb_joypad_ctrl-val :lambda-list '(m))
(cl:defmethod io_fb_joypad_ctrl-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_joypad_ctrl-val is deprecated.  Use yhs_can_msgs-msg:io_fb_joypad_ctrl instead.")
  (io_fb_joypad_ctrl m))

(cl:ensure-generic-function 'io_fb_charge_state-val :lambda-list '(m))
(cl:defmethod io_fb_charge_state-val ((m <io_fb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_fb_charge_state-val is deprecated.  Use yhs_can_msgs-msg:io_fb_charge_state instead.")
  (io_fb_charge_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <io_fb>) ostream)
  "Serializes a message object of type '<io_fb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_lamp_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_unlock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_lower_beam_headlamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_upper_beam_headlamp) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'io_fb_turn_lamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_braking_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_clearance_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fog_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_speaker) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fl_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fm_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fr_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rl_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rm_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rr_impact_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fl_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fm_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_fr_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rl_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rm_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_rr_drop_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_joypad_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_fb_charge_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <io_fb>) istream)
  "Deserializes a message object of type '<io_fb>"
    (cl:setf (cl:slot-value msg 'io_fb_lamp_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_unlock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_lower_beam_headlamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_upper_beam_headlamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'io_fb_turn_lamp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'io_fb_braking_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_clearance_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fog_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_speaker) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fl_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fm_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fr_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rl_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rm_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rr_impact_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fl_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fm_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_fr_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rl_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rm_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_rr_drop_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_joypad_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_fb_charge_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<io_fb>)))
  "Returns string type for a message object of type '<io_fb>"
  "yhs_can_msgs/io_fb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'io_fb)))
  "Returns string type for a message object of type 'io_fb"
  "yhs_can_msgs/io_fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<io_fb>)))
  "Returns md5sum for a message object of type '<io_fb>"
  "734f5c2c489a056cd36d8e25d62c72df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'io_fb)))
  "Returns md5sum for a message object of type 'io_fb"
  "734f5c2c489a056cd36d8e25d62c72df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<io_fb>)))
  "Returns full string definition for message of type '<io_fb>"
  (cl:format cl:nil "bool  io_fb_lamp_ctrl~%bool  io_fb_unlock~%bool  io_fb_lower_beam_headlamp~%bool  io_fb_upper_beam_headlamp~%int8  io_fb_turn_lamp~%bool  io_fb_braking_lamp~%bool  io_fb_clearance_lamp~%bool  io_fb_fog_lamp~%bool  io_fb_speaker~%bool  io_fb_fl_impact_sensor~%bool  io_fb_fm_impact_sensor~%bool  io_fb_fr_impact_sensor~%bool  io_fb_rl_impact_sensor~%bool  io_fb_rm_impact_sensor~%bool  io_fb_rr_impact_sensor~%bool  io_fb_fl_drop_sensor~%bool  io_fb_fm_drop_sensor~%bool  io_fb_fr_drop_sensor~%bool  io_fb_rl_drop_sensor~%bool  io_fb_rm_drop_sensor~%bool  io_fb_rr_drop_sensor~%bool  io_fb_estop~%bool  io_fb_joypad_ctrl~%bool  io_fb_charge_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'io_fb)))
  "Returns full string definition for message of type 'io_fb"
  (cl:format cl:nil "bool  io_fb_lamp_ctrl~%bool  io_fb_unlock~%bool  io_fb_lower_beam_headlamp~%bool  io_fb_upper_beam_headlamp~%int8  io_fb_turn_lamp~%bool  io_fb_braking_lamp~%bool  io_fb_clearance_lamp~%bool  io_fb_fog_lamp~%bool  io_fb_speaker~%bool  io_fb_fl_impact_sensor~%bool  io_fb_fm_impact_sensor~%bool  io_fb_fr_impact_sensor~%bool  io_fb_rl_impact_sensor~%bool  io_fb_rm_impact_sensor~%bool  io_fb_rr_impact_sensor~%bool  io_fb_fl_drop_sensor~%bool  io_fb_fm_drop_sensor~%bool  io_fb_fr_drop_sensor~%bool  io_fb_rl_drop_sensor~%bool  io_fb_rm_drop_sensor~%bool  io_fb_rr_drop_sensor~%bool  io_fb_estop~%bool  io_fb_joypad_ctrl~%bool  io_fb_charge_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <io_fb>))
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
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <io_fb>))
  "Converts a ROS message object to a list"
  (cl:list 'io_fb
    (cl:cons ':io_fb_lamp_ctrl (io_fb_lamp_ctrl msg))
    (cl:cons ':io_fb_unlock (io_fb_unlock msg))
    (cl:cons ':io_fb_lower_beam_headlamp (io_fb_lower_beam_headlamp msg))
    (cl:cons ':io_fb_upper_beam_headlamp (io_fb_upper_beam_headlamp msg))
    (cl:cons ':io_fb_turn_lamp (io_fb_turn_lamp msg))
    (cl:cons ':io_fb_braking_lamp (io_fb_braking_lamp msg))
    (cl:cons ':io_fb_clearance_lamp (io_fb_clearance_lamp msg))
    (cl:cons ':io_fb_fog_lamp (io_fb_fog_lamp msg))
    (cl:cons ':io_fb_speaker (io_fb_speaker msg))
    (cl:cons ':io_fb_fl_impact_sensor (io_fb_fl_impact_sensor msg))
    (cl:cons ':io_fb_fm_impact_sensor (io_fb_fm_impact_sensor msg))
    (cl:cons ':io_fb_fr_impact_sensor (io_fb_fr_impact_sensor msg))
    (cl:cons ':io_fb_rl_impact_sensor (io_fb_rl_impact_sensor msg))
    (cl:cons ':io_fb_rm_impact_sensor (io_fb_rm_impact_sensor msg))
    (cl:cons ':io_fb_rr_impact_sensor (io_fb_rr_impact_sensor msg))
    (cl:cons ':io_fb_fl_drop_sensor (io_fb_fl_drop_sensor msg))
    (cl:cons ':io_fb_fm_drop_sensor (io_fb_fm_drop_sensor msg))
    (cl:cons ':io_fb_fr_drop_sensor (io_fb_fr_drop_sensor msg))
    (cl:cons ':io_fb_rl_drop_sensor (io_fb_rl_drop_sensor msg))
    (cl:cons ':io_fb_rm_drop_sensor (io_fb_rm_drop_sensor msg))
    (cl:cons ':io_fb_rr_drop_sensor (io_fb_rr_drop_sensor msg))
    (cl:cons ':io_fb_estop (io_fb_estop msg))
    (cl:cons ':io_fb_joypad_ctrl (io_fb_joypad_ctrl msg))
    (cl:cons ':io_fb_charge_state (io_fb_charge_state msg))
))
