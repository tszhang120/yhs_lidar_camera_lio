;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::io_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'io_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::IO_FB")
  (make-package "YHS_CAN_MSGS::IO_FB"))

(in-package "ROS")
;;//! \htmlinclude io_fb.msg.html


(defclass yhs_can_msgs::io_fb
  :super ros::object
  :slots (_io_fb_lamp_ctrl _io_fb_unlock _io_fb_lower_beam_headlamp _io_fb_upper_beam_headlamp _io_fb_turn_lamp _io_fb_braking_lamp _io_fb_clearance_lamp _io_fb_fog_lamp _io_fb_speaker _io_fb_fl_impact_sensor _io_fb_fm_impact_sensor _io_fb_fr_impact_sensor _io_fb_rl_impact_sensor _io_fb_rm_impact_sensor _io_fb_rr_impact_sensor _io_fb_fl_drop_sensor _io_fb_fm_drop_sensor _io_fb_fr_drop_sensor _io_fb_rl_drop_sensor _io_fb_rm_drop_sensor _io_fb_rr_drop_sensor _io_fb_estop _io_fb_joypad_ctrl _io_fb_charge_state ))

(defmethod yhs_can_msgs::io_fb
  (:init
   (&key
    ((:io_fb_lamp_ctrl __io_fb_lamp_ctrl) nil)
    ((:io_fb_unlock __io_fb_unlock) nil)
    ((:io_fb_lower_beam_headlamp __io_fb_lower_beam_headlamp) nil)
    ((:io_fb_upper_beam_headlamp __io_fb_upper_beam_headlamp) nil)
    ((:io_fb_turn_lamp __io_fb_turn_lamp) 0)
    ((:io_fb_braking_lamp __io_fb_braking_lamp) nil)
    ((:io_fb_clearance_lamp __io_fb_clearance_lamp) nil)
    ((:io_fb_fog_lamp __io_fb_fog_lamp) nil)
    ((:io_fb_speaker __io_fb_speaker) nil)
    ((:io_fb_fl_impact_sensor __io_fb_fl_impact_sensor) nil)
    ((:io_fb_fm_impact_sensor __io_fb_fm_impact_sensor) nil)
    ((:io_fb_fr_impact_sensor __io_fb_fr_impact_sensor) nil)
    ((:io_fb_rl_impact_sensor __io_fb_rl_impact_sensor) nil)
    ((:io_fb_rm_impact_sensor __io_fb_rm_impact_sensor) nil)
    ((:io_fb_rr_impact_sensor __io_fb_rr_impact_sensor) nil)
    ((:io_fb_fl_drop_sensor __io_fb_fl_drop_sensor) nil)
    ((:io_fb_fm_drop_sensor __io_fb_fm_drop_sensor) nil)
    ((:io_fb_fr_drop_sensor __io_fb_fr_drop_sensor) nil)
    ((:io_fb_rl_drop_sensor __io_fb_rl_drop_sensor) nil)
    ((:io_fb_rm_drop_sensor __io_fb_rm_drop_sensor) nil)
    ((:io_fb_rr_drop_sensor __io_fb_rr_drop_sensor) nil)
    ((:io_fb_estop __io_fb_estop) nil)
    ((:io_fb_joypad_ctrl __io_fb_joypad_ctrl) nil)
    ((:io_fb_charge_state __io_fb_charge_state) nil)
    )
   (send-super :init)
   (setq _io_fb_lamp_ctrl __io_fb_lamp_ctrl)
   (setq _io_fb_unlock __io_fb_unlock)
   (setq _io_fb_lower_beam_headlamp __io_fb_lower_beam_headlamp)
   (setq _io_fb_upper_beam_headlamp __io_fb_upper_beam_headlamp)
   (setq _io_fb_turn_lamp (round __io_fb_turn_lamp))
   (setq _io_fb_braking_lamp __io_fb_braking_lamp)
   (setq _io_fb_clearance_lamp __io_fb_clearance_lamp)
   (setq _io_fb_fog_lamp __io_fb_fog_lamp)
   (setq _io_fb_speaker __io_fb_speaker)
   (setq _io_fb_fl_impact_sensor __io_fb_fl_impact_sensor)
   (setq _io_fb_fm_impact_sensor __io_fb_fm_impact_sensor)
   (setq _io_fb_fr_impact_sensor __io_fb_fr_impact_sensor)
   (setq _io_fb_rl_impact_sensor __io_fb_rl_impact_sensor)
   (setq _io_fb_rm_impact_sensor __io_fb_rm_impact_sensor)
   (setq _io_fb_rr_impact_sensor __io_fb_rr_impact_sensor)
   (setq _io_fb_fl_drop_sensor __io_fb_fl_drop_sensor)
   (setq _io_fb_fm_drop_sensor __io_fb_fm_drop_sensor)
   (setq _io_fb_fr_drop_sensor __io_fb_fr_drop_sensor)
   (setq _io_fb_rl_drop_sensor __io_fb_rl_drop_sensor)
   (setq _io_fb_rm_drop_sensor __io_fb_rm_drop_sensor)
   (setq _io_fb_rr_drop_sensor __io_fb_rr_drop_sensor)
   (setq _io_fb_estop __io_fb_estop)
   (setq _io_fb_joypad_ctrl __io_fb_joypad_ctrl)
   (setq _io_fb_charge_state __io_fb_charge_state)
   self)
  (:io_fb_lamp_ctrl
   (&optional (__io_fb_lamp_ctrl :null))
   (if (not (eq __io_fb_lamp_ctrl :null)) (setq _io_fb_lamp_ctrl __io_fb_lamp_ctrl)) _io_fb_lamp_ctrl)
  (:io_fb_unlock
   (&optional (__io_fb_unlock :null))
   (if (not (eq __io_fb_unlock :null)) (setq _io_fb_unlock __io_fb_unlock)) _io_fb_unlock)
  (:io_fb_lower_beam_headlamp
   (&optional (__io_fb_lower_beam_headlamp :null))
   (if (not (eq __io_fb_lower_beam_headlamp :null)) (setq _io_fb_lower_beam_headlamp __io_fb_lower_beam_headlamp)) _io_fb_lower_beam_headlamp)
  (:io_fb_upper_beam_headlamp
   (&optional (__io_fb_upper_beam_headlamp :null))
   (if (not (eq __io_fb_upper_beam_headlamp :null)) (setq _io_fb_upper_beam_headlamp __io_fb_upper_beam_headlamp)) _io_fb_upper_beam_headlamp)
  (:io_fb_turn_lamp
   (&optional __io_fb_turn_lamp)
   (if __io_fb_turn_lamp (setq _io_fb_turn_lamp __io_fb_turn_lamp)) _io_fb_turn_lamp)
  (:io_fb_braking_lamp
   (&optional (__io_fb_braking_lamp :null))
   (if (not (eq __io_fb_braking_lamp :null)) (setq _io_fb_braking_lamp __io_fb_braking_lamp)) _io_fb_braking_lamp)
  (:io_fb_clearance_lamp
   (&optional (__io_fb_clearance_lamp :null))
   (if (not (eq __io_fb_clearance_lamp :null)) (setq _io_fb_clearance_lamp __io_fb_clearance_lamp)) _io_fb_clearance_lamp)
  (:io_fb_fog_lamp
   (&optional (__io_fb_fog_lamp :null))
   (if (not (eq __io_fb_fog_lamp :null)) (setq _io_fb_fog_lamp __io_fb_fog_lamp)) _io_fb_fog_lamp)
  (:io_fb_speaker
   (&optional (__io_fb_speaker :null))
   (if (not (eq __io_fb_speaker :null)) (setq _io_fb_speaker __io_fb_speaker)) _io_fb_speaker)
  (:io_fb_fl_impact_sensor
   (&optional (__io_fb_fl_impact_sensor :null))
   (if (not (eq __io_fb_fl_impact_sensor :null)) (setq _io_fb_fl_impact_sensor __io_fb_fl_impact_sensor)) _io_fb_fl_impact_sensor)
  (:io_fb_fm_impact_sensor
   (&optional (__io_fb_fm_impact_sensor :null))
   (if (not (eq __io_fb_fm_impact_sensor :null)) (setq _io_fb_fm_impact_sensor __io_fb_fm_impact_sensor)) _io_fb_fm_impact_sensor)
  (:io_fb_fr_impact_sensor
   (&optional (__io_fb_fr_impact_sensor :null))
   (if (not (eq __io_fb_fr_impact_sensor :null)) (setq _io_fb_fr_impact_sensor __io_fb_fr_impact_sensor)) _io_fb_fr_impact_sensor)
  (:io_fb_rl_impact_sensor
   (&optional (__io_fb_rl_impact_sensor :null))
   (if (not (eq __io_fb_rl_impact_sensor :null)) (setq _io_fb_rl_impact_sensor __io_fb_rl_impact_sensor)) _io_fb_rl_impact_sensor)
  (:io_fb_rm_impact_sensor
   (&optional (__io_fb_rm_impact_sensor :null))
   (if (not (eq __io_fb_rm_impact_sensor :null)) (setq _io_fb_rm_impact_sensor __io_fb_rm_impact_sensor)) _io_fb_rm_impact_sensor)
  (:io_fb_rr_impact_sensor
   (&optional (__io_fb_rr_impact_sensor :null))
   (if (not (eq __io_fb_rr_impact_sensor :null)) (setq _io_fb_rr_impact_sensor __io_fb_rr_impact_sensor)) _io_fb_rr_impact_sensor)
  (:io_fb_fl_drop_sensor
   (&optional (__io_fb_fl_drop_sensor :null))
   (if (not (eq __io_fb_fl_drop_sensor :null)) (setq _io_fb_fl_drop_sensor __io_fb_fl_drop_sensor)) _io_fb_fl_drop_sensor)
  (:io_fb_fm_drop_sensor
   (&optional (__io_fb_fm_drop_sensor :null))
   (if (not (eq __io_fb_fm_drop_sensor :null)) (setq _io_fb_fm_drop_sensor __io_fb_fm_drop_sensor)) _io_fb_fm_drop_sensor)
  (:io_fb_fr_drop_sensor
   (&optional (__io_fb_fr_drop_sensor :null))
   (if (not (eq __io_fb_fr_drop_sensor :null)) (setq _io_fb_fr_drop_sensor __io_fb_fr_drop_sensor)) _io_fb_fr_drop_sensor)
  (:io_fb_rl_drop_sensor
   (&optional (__io_fb_rl_drop_sensor :null))
   (if (not (eq __io_fb_rl_drop_sensor :null)) (setq _io_fb_rl_drop_sensor __io_fb_rl_drop_sensor)) _io_fb_rl_drop_sensor)
  (:io_fb_rm_drop_sensor
   (&optional (__io_fb_rm_drop_sensor :null))
   (if (not (eq __io_fb_rm_drop_sensor :null)) (setq _io_fb_rm_drop_sensor __io_fb_rm_drop_sensor)) _io_fb_rm_drop_sensor)
  (:io_fb_rr_drop_sensor
   (&optional (__io_fb_rr_drop_sensor :null))
   (if (not (eq __io_fb_rr_drop_sensor :null)) (setq _io_fb_rr_drop_sensor __io_fb_rr_drop_sensor)) _io_fb_rr_drop_sensor)
  (:io_fb_estop
   (&optional (__io_fb_estop :null))
   (if (not (eq __io_fb_estop :null)) (setq _io_fb_estop __io_fb_estop)) _io_fb_estop)
  (:io_fb_joypad_ctrl
   (&optional (__io_fb_joypad_ctrl :null))
   (if (not (eq __io_fb_joypad_ctrl :null)) (setq _io_fb_joypad_ctrl __io_fb_joypad_ctrl)) _io_fb_joypad_ctrl)
  (:io_fb_charge_state
   (&optional (__io_fb_charge_state :null))
   (if (not (eq __io_fb_charge_state :null)) (setq _io_fb_charge_state __io_fb_charge_state)) _io_fb_charge_state)
  (:serialization-length
   ()
   (+
    ;; bool _io_fb_lamp_ctrl
    1
    ;; bool _io_fb_unlock
    1
    ;; bool _io_fb_lower_beam_headlamp
    1
    ;; bool _io_fb_upper_beam_headlamp
    1
    ;; int8 _io_fb_turn_lamp
    1
    ;; bool _io_fb_braking_lamp
    1
    ;; bool _io_fb_clearance_lamp
    1
    ;; bool _io_fb_fog_lamp
    1
    ;; bool _io_fb_speaker
    1
    ;; bool _io_fb_fl_impact_sensor
    1
    ;; bool _io_fb_fm_impact_sensor
    1
    ;; bool _io_fb_fr_impact_sensor
    1
    ;; bool _io_fb_rl_impact_sensor
    1
    ;; bool _io_fb_rm_impact_sensor
    1
    ;; bool _io_fb_rr_impact_sensor
    1
    ;; bool _io_fb_fl_drop_sensor
    1
    ;; bool _io_fb_fm_drop_sensor
    1
    ;; bool _io_fb_fr_drop_sensor
    1
    ;; bool _io_fb_rl_drop_sensor
    1
    ;; bool _io_fb_rm_drop_sensor
    1
    ;; bool _io_fb_rr_drop_sensor
    1
    ;; bool _io_fb_estop
    1
    ;; bool _io_fb_joypad_ctrl
    1
    ;; bool _io_fb_charge_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _io_fb_lamp_ctrl
       (if _io_fb_lamp_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_unlock
       (if _io_fb_unlock (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_lower_beam_headlamp
       (if _io_fb_lower_beam_headlamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_upper_beam_headlamp
       (if _io_fb_upper_beam_headlamp (write-byte -1 s) (write-byte 0 s))
     ;; int8 _io_fb_turn_lamp
       (write-byte _io_fb_turn_lamp s)
     ;; bool _io_fb_braking_lamp
       (if _io_fb_braking_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_clearance_lamp
       (if _io_fb_clearance_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fog_lamp
       (if _io_fb_fog_lamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_speaker
       (if _io_fb_speaker (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fl_impact_sensor
       (if _io_fb_fl_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fm_impact_sensor
       (if _io_fb_fm_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fr_impact_sensor
       (if _io_fb_fr_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rl_impact_sensor
       (if _io_fb_rl_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rm_impact_sensor
       (if _io_fb_rm_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rr_impact_sensor
       (if _io_fb_rr_impact_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fl_drop_sensor
       (if _io_fb_fl_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fm_drop_sensor
       (if _io_fb_fm_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_fr_drop_sensor
       (if _io_fb_fr_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rl_drop_sensor
       (if _io_fb_rl_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rm_drop_sensor
       (if _io_fb_rm_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_rr_drop_sensor
       (if _io_fb_rr_drop_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_estop
       (if _io_fb_estop (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_joypad_ctrl
       (if _io_fb_joypad_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; bool _io_fb_charge_state
       (if _io_fb_charge_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _io_fb_lamp_ctrl
     (setq _io_fb_lamp_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_unlock
     (setq _io_fb_unlock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_lower_beam_headlamp
     (setq _io_fb_lower_beam_headlamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_upper_beam_headlamp
     (setq _io_fb_upper_beam_headlamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _io_fb_turn_lamp
     (setq _io_fb_turn_lamp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _io_fb_turn_lamp 127) (setq _io_fb_turn_lamp (- _io_fb_turn_lamp 256)))
   ;; bool _io_fb_braking_lamp
     (setq _io_fb_braking_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_clearance_lamp
     (setq _io_fb_clearance_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fog_lamp
     (setq _io_fb_fog_lamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_speaker
     (setq _io_fb_speaker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fl_impact_sensor
     (setq _io_fb_fl_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fm_impact_sensor
     (setq _io_fb_fm_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fr_impact_sensor
     (setq _io_fb_fr_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rl_impact_sensor
     (setq _io_fb_rl_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rm_impact_sensor
     (setq _io_fb_rm_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rr_impact_sensor
     (setq _io_fb_rr_impact_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fl_drop_sensor
     (setq _io_fb_fl_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fm_drop_sensor
     (setq _io_fb_fm_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_fr_drop_sensor
     (setq _io_fb_fr_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rl_drop_sensor
     (setq _io_fb_rl_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rm_drop_sensor
     (setq _io_fb_rm_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_rr_drop_sensor
     (setq _io_fb_rr_drop_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_estop
     (setq _io_fb_estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_joypad_ctrl
     (setq _io_fb_joypad_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _io_fb_charge_state
     (setq _io_fb_charge_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get yhs_can_msgs::io_fb :md5sum-) "734f5c2c489a056cd36d8e25d62c72df")
(setf (get yhs_can_msgs::io_fb :datatype-) "yhs_can_msgs/io_fb")
(setf (get yhs_can_msgs::io_fb :definition-)
      "bool  io_fb_lamp_ctrl
bool  io_fb_unlock
bool  io_fb_lower_beam_headlamp
bool  io_fb_upper_beam_headlamp
int8  io_fb_turn_lamp
bool  io_fb_braking_lamp
bool  io_fb_clearance_lamp
bool  io_fb_fog_lamp
bool  io_fb_speaker
bool  io_fb_fl_impact_sensor
bool  io_fb_fm_impact_sensor
bool  io_fb_fr_impact_sensor
bool  io_fb_rl_impact_sensor
bool  io_fb_rm_impact_sensor
bool  io_fb_rr_impact_sensor
bool  io_fb_fl_drop_sensor
bool  io_fb_fm_drop_sensor
bool  io_fb_fr_drop_sensor
bool  io_fb_rl_drop_sensor
bool  io_fb_rm_drop_sensor
bool  io_fb_rr_drop_sensor
bool  io_fb_estop
bool  io_fb_joypad_ctrl
bool  io_fb_charge_state

")



(provide :yhs_can_msgs/io_fb "734f5c2c489a056cd36d8e25d62c72df")


