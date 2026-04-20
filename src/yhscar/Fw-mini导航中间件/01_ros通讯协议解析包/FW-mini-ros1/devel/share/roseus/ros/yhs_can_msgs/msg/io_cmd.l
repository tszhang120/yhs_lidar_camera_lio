;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::io_cmd)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'io_cmd (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::IO_CMD")
  (make-package "YHS_CAN_MSGS::IO_CMD"))

(in-package "ROS")
;;//! \htmlinclude io_cmd.msg.html


(defclass yhs_can_msgs::io_cmd
  :super ros::object
  :slots (_io_cmd_lamp_ctrl _io_cmd_unlock _io_cmd_lower_beam_headlamp _io_cmd_upper_beam_headlamp _io_cmd_turn_lamp _io_cmd_braking_lamp _io_cmd_clearance_lamp _io_cmd_fog_lamp _io_cmd_speaker ))

(defmethod yhs_can_msgs::io_cmd
  (:init
   (&key
    ((:io_cmd_lamp_ctrl __io_cmd_lamp_ctrl) nil)
    ((:io_cmd_unlock __io_cmd_unlock) nil)
    ((:io_cmd_lower_beam_headlamp __io_cmd_lower_beam_headlamp) nil)
    ((:io_cmd_upper_beam_headlamp __io_cmd_upper_beam_headlamp) nil)
    ((:io_cmd_turn_lamp __io_cmd_turn_lamp) 0)
    ((:io_cmd_braking_lamp __io_cmd_braking_lamp) nil)
    ((:io_cmd_clearance_lamp __io_cmd_clearance_lamp) nil)
    ((:io_cmd_fog_lamp __io_cmd_fog_lamp) nil)
    ((:io_cmd_speaker __io_cmd_speaker) nil)
    )
   (send-super :init)
   (setq _io_cmd_lamp_ctrl __io_cmd_lamp_ctrl)
   (setq _io_cmd_unlock __io_cmd_unlock)
   (setq _io_cmd_lower_beam_headlamp __io_cmd_lower_beam_headlamp)
   (setq _io_cmd_upper_beam_headlamp __io_cmd_upper_beam_headlamp)
   (setq _io_cmd_turn_lamp (round __io_cmd_turn_lamp))
   (setq _io_cmd_braking_lamp __io_cmd_braking_lamp)
   (setq _io_cmd_clearance_lamp __io_cmd_clearance_lamp)
   (setq _io_cmd_fog_lamp __io_cmd_fog_lamp)
   (setq _io_cmd_speaker __io_cmd_speaker)
   self)
  (:io_cmd_lamp_ctrl
   (&optional (__io_cmd_lamp_ctrl :null))
   (if (not (eq __io_cmd_lamp_ctrl :null)) (setq _io_cmd_lamp_ctrl __io_cmd_lamp_ctrl)) _io_cmd_lamp_ctrl)
  (:io_cmd_unlock
   (&optional (__io_cmd_unlock :null))
   (if (not (eq __io_cmd_unlock :null)) (setq _io_cmd_unlock __io_cmd_unlock)) _io_cmd_unlock)
  (:io_cmd_lower_beam_headlamp
   (&optional (__io_cmd_lower_beam_headlamp :null))
   (if (not (eq __io_cmd_lower_beam_headlamp :null)) (setq _io_cmd_lower_beam_headlamp __io_cmd_lower_beam_headlamp)) _io_cmd_lower_beam_headlamp)
  (:io_cmd_upper_beam_headlamp
   (&optional (__io_cmd_upper_beam_headlamp :null))
   (if (not (eq __io_cmd_upper_beam_headlamp :null)) (setq _io_cmd_upper_beam_headlamp __io_cmd_upper_beam_headlamp)) _io_cmd_upper_beam_headlamp)
  (:io_cmd_turn_lamp
   (&optional __io_cmd_turn_lamp)
   (if __io_cmd_turn_lamp (setq _io_cmd_turn_lamp __io_cmd_turn_lamp)) _io_cmd_turn_lamp)
  (:io_cmd_braking_lamp
   (&optional (__io_cmd_braking_lamp :null))
   (if (not (eq __io_cmd_braking_lamp :null)) (setq _io_cmd_braking_lamp __io_cmd_braking_lamp)) _io_cmd_braking_lamp)
  (:io_cmd_clearance_lamp
   (&optional (__io_cmd_clearance_lamp :null))
   (if (not (eq __io_cmd_clearance_lamp :null)) (setq _io_cmd_clearance_lamp __io_cmd_clearance_lamp)) _io_cmd_clearance_lamp)
  (:io_cmd_fog_lamp
   (&optional (__io_cmd_fog_lamp :null))
   (if (not (eq __io_cmd_fog_lamp :null)) (setq _io_cmd_fog_lamp __io_cmd_fog_lamp)) _io_cmd_fog_lamp)
  (:io_cmd_speaker
   (&optional (__io_cmd_speaker :null))
   (if (not (eq __io_cmd_speaker :null)) (setq _io_cmd_speaker __io_cmd_speaker)) _io_cmd_speaker)
  (:serialization-length
   ()
   (+
    ;; bool _io_cmd_lamp_ctrl
    1
    ;; bool _io_cmd_unlock
    1
    ;; bool _io_cmd_lower_beam_headlamp
    1
    ;; bool _io_cmd_upper_beam_headlamp
    1
    ;; uint8 _io_cmd_turn_lamp
    1
    ;; bool _io_cmd_braking_lamp
    1
    ;; bool _io_cmd_clearance_lamp
    1
    ;; bool _io_cmd_fog_lamp
    1
    ;; bool _io_cmd_speaker
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _io_cmd_lamp_ctrl
       (if _io_cmd_lamp_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_unlock
       (if _io_cmd_unlock (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_lower_beam_headlamp
       (if _io_cmd_lower_beam_headlamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_upper_beam_headlamp
       (if _io_cmd_upper_beam_headlamp (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _io_cmd_turn_lamp
       (write-byte _io_cmd_turn_lamp s)
     ;; bool _io_cmd_braking_lamp
       (if _io_cmd_braking_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_clearance_lamp
       (if _io_cmd_clearance_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_fog_lamp
       (if _io_cmd_fog_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_cmd_speaker
       (if _io_cmd_speaker (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _io_cmd_lamp_ctrl
     (setq _io_cmd_lamp_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_unlock
     (setq _io_cmd_unlock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_lower_beam_headlamp
     (setq _io_cmd_lower_beam_headlamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_upper_beam_headlamp
     (setq _io_cmd_upper_beam_headlamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _io_cmd_turn_lamp
     (setq _io_cmd_turn_lamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _io_cmd_braking_lamp
     (setq _io_cmd_braking_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_clearance_lamp
     (setq _io_cmd_clearance_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_fog_lamp
     (setq _io_cmd_fog_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_cmd_speaker
     (setq _io_cmd_speaker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yhs_can_msgs::io_cmd :md5sum-) "fff005dafb7015ce36adc67decd872a7")
(setf (get yhs_can_msgs::io_cmd :datatype-) "yhs_can_msgs/io_cmd")
(setf (get yhs_can_msgs::io_cmd :definition-)
      "bool	 io_cmd_lamp_ctrl
bool	 io_cmd_unlock
bool     io_cmd_lower_beam_headlamp
bool     io_cmd_upper_beam_headlamp     
uint8	 io_cmd_turn_lamp
bool     io_cmd_braking_lamp
bool     io_cmd_clearance_lamp
bool     io_cmd_fog_lamp
bool	 io_cmd_speaker

")



(provide :yhs_can_msgs/io_cmd "fff005dafb7015ce36adc67decd872a7")


