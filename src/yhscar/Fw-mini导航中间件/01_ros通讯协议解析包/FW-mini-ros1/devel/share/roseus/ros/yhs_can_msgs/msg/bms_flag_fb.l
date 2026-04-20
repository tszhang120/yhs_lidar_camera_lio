;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::bms_flag_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'bms_flag_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::BMS_FLAG_FB")
  (make-package "YHS_CAN_MSGS::BMS_FLAG_FB"))

(in-package "ROS")
;;//! \htmlinclude bms_flag_fb.msg.html


(defclass yhs_can_msgs::bms_flag_fb
  :super ros::object
  :slots (_bms_flag_fb_soc _bms_flag_fb_single_ov _bms_flag_fb_single_uv _bms_flag_fb_ov _bms_flag_fb_uv _bms_flag_fb_charge_ot _bms_flag_fb_charge_ut _bms_flag_fb_discharge_ot _bms_flag_fb_discharge_ut _bms_flag_fb_charge_oc _bms_flag_fb_discharge_oc _bms_flag_fb_short _bms_flag_fb_ic_error _bms_flag_fb_lock_mos _bms_flag_fb_charge_flag _bms_flag_fb_hight_temperature _bms_flag_fb_low_temperature ))

(defmethod yhs_can_msgs::bms_flag_fb
  (:init
   (&key
    ((:bms_flag_fb_soc __bms_flag_fb_soc) 0)
    ((:bms_flag_fb_single_ov __bms_flag_fb_single_ov) nil)
    ((:bms_flag_fb_single_uv __bms_flag_fb_single_uv) nil)
    ((:bms_flag_fb_ov __bms_flag_fb_ov) nil)
    ((:bms_flag_fb_uv __bms_flag_fb_uv) nil)
    ((:bms_flag_fb_charge_ot __bms_flag_fb_charge_ot) nil)
    ((:bms_flag_fb_charge_ut __bms_flag_fb_charge_ut) nil)
    ((:bms_flag_fb_discharge_ot __bms_flag_fb_discharge_ot) nil)
    ((:bms_flag_fb_discharge_ut __bms_flag_fb_discharge_ut) nil)
    ((:bms_flag_fb_charge_oc __bms_flag_fb_charge_oc) nil)
    ((:bms_flag_fb_discharge_oc __bms_flag_fb_discharge_oc) nil)
    ((:bms_flag_fb_short __bms_flag_fb_short) nil)
    ((:bms_flag_fb_ic_error __bms_flag_fb_ic_error) nil)
    ((:bms_flag_fb_lock_mos __bms_flag_fb_lock_mos) nil)
    ((:bms_flag_fb_charge_flag __bms_flag_fb_charge_flag) nil)
    ((:bms_flag_fb_hight_temperature __bms_flag_fb_hight_temperature) 0.0)
    ((:bms_flag_fb_low_temperature __bms_flag_fb_low_temperature) 0.0)
    )
   (send-super :init)
   (setq _bms_flag_fb_soc (round __bms_flag_fb_soc))
   (setq _bms_flag_fb_single_ov __bms_flag_fb_single_ov)
   (setq _bms_flag_fb_single_uv __bms_flag_fb_single_uv)
   (setq _bms_flag_fb_ov __bms_flag_fb_ov)
   (setq _bms_flag_fb_uv __bms_flag_fb_uv)
   (setq _bms_flag_fb_charge_ot __bms_flag_fb_charge_ot)
   (setq _bms_flag_fb_charge_ut __bms_flag_fb_charge_ut)
   (setq _bms_flag_fb_discharge_ot __bms_flag_fb_discharge_ot)
   (setq _bms_flag_fb_discharge_ut __bms_flag_fb_discharge_ut)
   (setq _bms_flag_fb_charge_oc __bms_flag_fb_charge_oc)
   (setq _bms_flag_fb_discharge_oc __bms_flag_fb_discharge_oc)
   (setq _bms_flag_fb_short __bms_flag_fb_short)
   (setq _bms_flag_fb_ic_error __bms_flag_fb_ic_error)
   (setq _bms_flag_fb_lock_mos __bms_flag_fb_lock_mos)
   (setq _bms_flag_fb_charge_flag __bms_flag_fb_charge_flag)
   (setq _bms_flag_fb_hight_temperature (float __bms_flag_fb_hight_temperature))
   (setq _bms_flag_fb_low_temperature (float __bms_flag_fb_low_temperature))
   self)
  (:bms_flag_fb_soc
   (&optional __bms_flag_fb_soc)
   (if __bms_flag_fb_soc (setq _bms_flag_fb_soc __bms_flag_fb_soc)) _bms_flag_fb_soc)
  (:bms_flag_fb_single_ov
   (&optional (__bms_flag_fb_single_ov :null))
   (if (not (eq __bms_flag_fb_single_ov :null)) (setq _bms_flag_fb_single_ov __bms_flag_fb_single_ov)) _bms_flag_fb_single_ov)
  (:bms_flag_fb_single_uv
   (&optional (__bms_flag_fb_single_uv :null))
   (if (not (eq __bms_flag_fb_single_uv :null)) (setq _bms_flag_fb_single_uv __bms_flag_fb_single_uv)) _bms_flag_fb_single_uv)
  (:bms_flag_fb_ov
   (&optional (__bms_flag_fb_ov :null))
   (if (not (eq __bms_flag_fb_ov :null)) (setq _bms_flag_fb_ov __bms_flag_fb_ov)) _bms_flag_fb_ov)
  (:bms_flag_fb_uv
   (&optional (__bms_flag_fb_uv :null))
   (if (not (eq __bms_flag_fb_uv :null)) (setq _bms_flag_fb_uv __bms_flag_fb_uv)) _bms_flag_fb_uv)
  (:bms_flag_fb_charge_ot
   (&optional (__bms_flag_fb_charge_ot :null))
   (if (not (eq __bms_flag_fb_charge_ot :null)) (setq _bms_flag_fb_charge_ot __bms_flag_fb_charge_ot)) _bms_flag_fb_charge_ot)
  (:bms_flag_fb_charge_ut
   (&optional (__bms_flag_fb_charge_ut :null))
   (if (not (eq __bms_flag_fb_charge_ut :null)) (setq _bms_flag_fb_charge_ut __bms_flag_fb_charge_ut)) _bms_flag_fb_charge_ut)
  (:bms_flag_fb_discharge_ot
   (&optional (__bms_flag_fb_discharge_ot :null))
   (if (not (eq __bms_flag_fb_discharge_ot :null)) (setq _bms_flag_fb_discharge_ot __bms_flag_fb_discharge_ot)) _bms_flag_fb_discharge_ot)
  (:bms_flag_fb_discharge_ut
   (&optional (__bms_flag_fb_discharge_ut :null))
   (if (not (eq __bms_flag_fb_discharge_ut :null)) (setq _bms_flag_fb_discharge_ut __bms_flag_fb_discharge_ut)) _bms_flag_fb_discharge_ut)
  (:bms_flag_fb_charge_oc
   (&optional (__bms_flag_fb_charge_oc :null))
   (if (not (eq __bms_flag_fb_charge_oc :null)) (setq _bms_flag_fb_charge_oc __bms_flag_fb_charge_oc)) _bms_flag_fb_charge_oc)
  (:bms_flag_fb_discharge_oc
   (&optional (__bms_flag_fb_discharge_oc :null))
   (if (not (eq __bms_flag_fb_discharge_oc :null)) (setq _bms_flag_fb_discharge_oc __bms_flag_fb_discharge_oc)) _bms_flag_fb_discharge_oc)
  (:bms_flag_fb_short
   (&optional (__bms_flag_fb_short :null))
   (if (not (eq __bms_flag_fb_short :null)) (setq _bms_flag_fb_short __bms_flag_fb_short)) _bms_flag_fb_short)
  (:bms_flag_fb_ic_error
   (&optional (__bms_flag_fb_ic_error :null))
   (if (not (eq __bms_flag_fb_ic_error :null)) (setq _bms_flag_fb_ic_error __bms_flag_fb_ic_error)) _bms_flag_fb_ic_error)
  (:bms_flag_fb_lock_mos
   (&optional (__bms_flag_fb_lock_mos :null))
   (if (not (eq __bms_flag_fb_lock_mos :null)) (setq _bms_flag_fb_lock_mos __bms_flag_fb_lock_mos)) _bms_flag_fb_lock_mos)
  (:bms_flag_fb_charge_flag
   (&optional (__bms_flag_fb_charge_flag :null))
   (if (not (eq __bms_flag_fb_charge_flag :null)) (setq _bms_flag_fb_charge_flag __bms_flag_fb_charge_flag)) _bms_flag_fb_charge_flag)
  (:bms_flag_fb_hight_temperature
   (&optional __bms_flag_fb_hight_temperature)
   (if __bms_flag_fb_hight_temperature (setq _bms_flag_fb_hight_temperature __bms_flag_fb_hight_temperature)) _bms_flag_fb_hight_temperature)
  (:bms_flag_fb_low_temperature
   (&optional __bms_flag_fb_low_temperature)
   (if __bms_flag_fb_low_temperature (setq _bms_flag_fb_low_temperature __bms_flag_fb_low_temperature)) _bms_flag_fb_low_temperature)
  (:serialization-length
   ()
   (+
    ;; uint8 _bms_flag_fb_soc
    1
    ;; bool _bms_flag_fb_single_ov
    1
    ;; bool _bms_flag_fb_single_uv
    1
    ;; bool _bms_flag_fb_ov
    1
    ;; bool _bms_flag_fb_uv
    1
    ;; bool _bms_flag_fb_charge_ot
    1
    ;; bool _bms_flag_fb_charge_ut
    1
    ;; bool _bms_flag_fb_discharge_ot
    1
    ;; bool _bms_flag_fb_discharge_ut
    1
    ;; bool _bms_flag_fb_charge_oc
    1
    ;; bool _bms_flag_fb_discharge_oc
    1
    ;; bool _bms_flag_fb_short
    1
    ;; bool _bms_flag_fb_ic_error
    1
    ;; bool _bms_flag_fb_lock_mos
    1
    ;; bool _bms_flag_fb_charge_flag
    1
    ;; float32 _bms_flag_fb_hight_temperature
    4
    ;; float32 _bms_flag_fb_low_temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _bms_flag_fb_soc
       (write-byte _bms_flag_fb_soc s)
     ;; bool _bms_flag_fb_single_ov
       (if _bms_flag_fb_single_ov (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_single_uv
       (if _bms_flag_fb_single_uv (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_ov
       (if _bms_flag_fb_ov (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_uv
       (if _bms_flag_fb_uv (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_charge_ot
       (if _bms_flag_fb_charge_ot (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_charge_ut
       (if _bms_flag_fb_charge_ut (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_discharge_ot
       (if _bms_flag_fb_discharge_ot (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_discharge_ut
       (if _bms_flag_fb_discharge_ut (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_charge_oc
       (if _bms_flag_fb_charge_oc (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_discharge_oc
       (if _bms_flag_fb_discharge_oc (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_short
       (if _bms_flag_fb_short (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_ic_error
       (if _bms_flag_fb_ic_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_lock_mos
       (if _bms_flag_fb_lock_mos (write-byte -1 s) (write-byte 0 s))
     ;; bool _bms_flag_fb_charge_flag
       (if _bms_flag_fb_charge_flag (write-byte -1 s) (write-byte 0 s))
     ;; float32 _bms_flag_fb_hight_temperature
       (sys::poke _bms_flag_fb_hight_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bms_flag_fb_low_temperature
       (sys::poke _bms_flag_fb_low_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _bms_flag_fb_soc
     (setq _bms_flag_fb_soc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _bms_flag_fb_single_ov
     (setq _bms_flag_fb_single_ov (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_single_uv
     (setq _bms_flag_fb_single_uv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_ov
     (setq _bms_flag_fb_ov (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_uv
     (setq _bms_flag_fb_uv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_charge_ot
     (setq _bms_flag_fb_charge_ot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_charge_ut
     (setq _bms_flag_fb_charge_ut (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_discharge_ot
     (setq _bms_flag_fb_discharge_ot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_discharge_ut
     (setq _bms_flag_fb_discharge_ut (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_charge_oc
     (setq _bms_flag_fb_charge_oc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_discharge_oc
     (setq _bms_flag_fb_discharge_oc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_short
     (setq _bms_flag_fb_short (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_ic_error
     (setq _bms_flag_fb_ic_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_lock_mos
     (setq _bms_flag_fb_lock_mos (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bms_flag_fb_charge_flag
     (setq _bms_flag_fb_charge_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _bms_flag_fb_hight_temperature
     (setq _bms_flag_fb_hight_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bms_flag_fb_low_temperature
     (setq _bms_flag_fb_low_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::bms_flag_fb :md5sum-) "0eca005b4236cdc33bec1ff0de5c3a0b")
(setf (get yhs_can_msgs::bms_flag_fb :datatype-) "yhs_can_msgs/bms_flag_fb")
(setf (get yhs_can_msgs::bms_flag_fb :definition-)
      "uint8 bms_flag_fb_soc
bool bms_flag_fb_single_ov
bool bms_flag_fb_single_uv
bool bms_flag_fb_ov
bool bms_flag_fb_uv
bool bms_flag_fb_charge_ot
bool bms_flag_fb_charge_ut
bool bms_flag_fb_discharge_ot
bool bms_flag_fb_discharge_ut
bool bms_flag_fb_charge_oc
bool bms_flag_fb_discharge_oc
bool bms_flag_fb_short
bool bms_flag_fb_ic_error
bool bms_flag_fb_lock_mos
bool bms_flag_fb_charge_flag
float32 bms_flag_fb_hight_temperature
float32 bms_flag_fb_low_temperature

")



(provide :yhs_can_msgs/bms_flag_fb "0eca005b4236cdc33bec1ff0de5c3a0b")


