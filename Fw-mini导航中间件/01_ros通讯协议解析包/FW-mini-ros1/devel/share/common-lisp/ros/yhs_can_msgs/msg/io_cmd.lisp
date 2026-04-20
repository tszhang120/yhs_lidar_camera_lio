; Auto-generated. Do not edit!


(cl:in-package yhs_can_msgs-msg)


;//! \htmlinclude io_cmd.msg.html

(cl:defclass <io_cmd> (roslisp-msg-protocol:ros-message)
  ((io_cmd_lamp_ctrl
    :reader io_cmd_lamp_ctrl
    :initarg :io_cmd_lamp_ctrl
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_unlock
    :reader io_cmd_unlock
    :initarg :io_cmd_unlock
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_lower_beam_headlamp
    :reader io_cmd_lower_beam_headlamp
    :initarg :io_cmd_lower_beam_headlamp
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_upper_beam_headlamp
    :reader io_cmd_upper_beam_headlamp
    :initarg :io_cmd_upper_beam_headlamp
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_turn_lamp
    :reader io_cmd_turn_lamp
    :initarg :io_cmd_turn_lamp
    :type cl:fixnum
    :initform 0)
   (io_cmd_braking_lamp
    :reader io_cmd_braking_lamp
    :initarg :io_cmd_braking_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_clearance_lamp
    :reader io_cmd_clearance_lamp
    :initarg :io_cmd_clearance_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_fog_lamp
    :reader io_cmd_fog_lamp
    :initarg :io_cmd_fog_lamp
    :type cl:boolean
    :initform cl:nil)
   (io_cmd_speaker
    :reader io_cmd_speaker
    :initarg :io_cmd_speaker
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass io_cmd (<io_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <io_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'io_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yhs_can_msgs-msg:<io_cmd> is deprecated: use yhs_can_msgs-msg:io_cmd instead.")))

(cl:ensure-generic-function 'io_cmd_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod io_cmd_lamp_ctrl-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_lamp_ctrl-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_lamp_ctrl instead.")
  (io_cmd_lamp_ctrl m))

(cl:ensure-generic-function 'io_cmd_unlock-val :lambda-list '(m))
(cl:defmethod io_cmd_unlock-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_unlock-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_unlock instead.")
  (io_cmd_unlock m))

(cl:ensure-generic-function 'io_cmd_lower_beam_headlamp-val :lambda-list '(m))
(cl:defmethod io_cmd_lower_beam_headlamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_lower_beam_headlamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_lower_beam_headlamp instead.")
  (io_cmd_lower_beam_headlamp m))

(cl:ensure-generic-function 'io_cmd_upper_beam_headlamp-val :lambda-list '(m))
(cl:defmethod io_cmd_upper_beam_headlamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_upper_beam_headlamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_upper_beam_headlamp instead.")
  (io_cmd_upper_beam_headlamp m))

(cl:ensure-generic-function 'io_cmd_turn_lamp-val :lambda-list '(m))
(cl:defmethod io_cmd_turn_lamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_turn_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_turn_lamp instead.")
  (io_cmd_turn_lamp m))

(cl:ensure-generic-function 'io_cmd_braking_lamp-val :lambda-list '(m))
(cl:defmethod io_cmd_braking_lamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_braking_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_braking_lamp instead.")
  (io_cmd_braking_lamp m))

(cl:ensure-generic-function 'io_cmd_clearance_lamp-val :lambda-list '(m))
(cl:defmethod io_cmd_clearance_lamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_clearance_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_clearance_lamp instead.")
  (io_cmd_clearance_lamp m))

(cl:ensure-generic-function 'io_cmd_fog_lamp-val :lambda-list '(m))
(cl:defmethod io_cmd_fog_lamp-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_fog_lamp-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_fog_lamp instead.")
  (io_cmd_fog_lamp m))

(cl:ensure-generic-function 'io_cmd_speaker-val :lambda-list '(m))
(cl:defmethod io_cmd_speaker-val ((m <io_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yhs_can_msgs-msg:io_cmd_speaker-val is deprecated.  Use yhs_can_msgs-msg:io_cmd_speaker instead.")
  (io_cmd_speaker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <io_cmd>) ostream)
  "Serializes a message object of type '<io_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_lamp_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_unlock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_lower_beam_headlamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_upper_beam_headlamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'io_cmd_turn_lamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_braking_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_clearance_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_fog_lamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_cmd_speaker) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <io_cmd>) istream)
  "Deserializes a message object of type '<io_cmd>"
    (cl:setf (cl:slot-value msg 'io_cmd_lamp_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_unlock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_lower_beam_headlamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_upper_beam_headlamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'io_cmd_turn_lamp)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'io_cmd_braking_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_clearance_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_fog_lamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'io_cmd_speaker) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<io_cmd>)))
  "Returns string type for a message object of type '<io_cmd>"
  "yhs_can_msgs/io_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'io_cmd)))
  "Returns string type for a message object of type 'io_cmd"
  "yhs_can_msgs/io_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<io_cmd>)))
  "Returns md5sum for a message object of type '<io_cmd>"
  "fff005dafb7015ce36adc67decd872a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'io_cmd)))
  "Returns md5sum for a message object of type 'io_cmd"
  "fff005dafb7015ce36adc67decd872a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<io_cmd>)))
  "Returns full string definition for message of type '<io_cmd>"
  (cl:format cl:nil "bool	 io_cmd_lamp_ctrl~%bool	 io_cmd_unlock~%bool     io_cmd_lower_beam_headlamp~%bool     io_cmd_upper_beam_headlamp     ~%uint8	 io_cmd_turn_lamp~%bool     io_cmd_braking_lamp~%bool     io_cmd_clearance_lamp~%bool     io_cmd_fog_lamp~%bool	 io_cmd_speaker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'io_cmd)))
  "Returns full string definition for message of type 'io_cmd"
  (cl:format cl:nil "bool	 io_cmd_lamp_ctrl~%bool	 io_cmd_unlock~%bool     io_cmd_lower_beam_headlamp~%bool     io_cmd_upper_beam_headlamp     ~%uint8	 io_cmd_turn_lamp~%bool     io_cmd_braking_lamp~%bool     io_cmd_clearance_lamp~%bool     io_cmd_fog_lamp~%bool	 io_cmd_speaker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <io_cmd>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <io_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'io_cmd
    (cl:cons ':io_cmd_lamp_ctrl (io_cmd_lamp_ctrl msg))
    (cl:cons ':io_cmd_unlock (io_cmd_unlock msg))
    (cl:cons ':io_cmd_lower_beam_headlamp (io_cmd_lower_beam_headlamp msg))
    (cl:cons ':io_cmd_upper_beam_headlamp (io_cmd_upper_beam_headlamp msg))
    (cl:cons ':io_cmd_turn_lamp (io_cmd_turn_lamp msg))
    (cl:cons ':io_cmd_braking_lamp (io_cmd_braking_lamp msg))
    (cl:cons ':io_cmd_clearance_lamp (io_cmd_clearance_lamp msg))
    (cl:cons ':io_cmd_fog_lamp (io_cmd_fog_lamp msg))
    (cl:cons ':io_cmd_speaker (io_cmd_speaker msg))
))
