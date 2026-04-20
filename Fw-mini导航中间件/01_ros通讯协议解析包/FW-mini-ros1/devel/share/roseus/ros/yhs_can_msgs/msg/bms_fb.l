;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::bms_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'bms_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::BMS_FB")
  (make-package "YHS_CAN_MSGS::BMS_FB"))

(in-package "ROS")
;;//! \htmlinclude bms_fb.msg.html


(defclass yhs_can_msgs::bms_fb
  :super ros::object
  :slots (_bms_fb_voltage _bms_fb_current _bms_fb_remaining_capacity ))

(defmethod yhs_can_msgs::bms_fb
  (:init
   (&key
    ((:bms_fb_voltage __bms_fb_voltage) 0.0)
    ((:bms_fb_current __bms_fb_current) 0.0)
    ((:bms_fb_remaining_capacity __bms_fb_remaining_capacity) 0.0)
    )
   (send-super :init)
   (setq _bms_fb_voltage (float __bms_fb_voltage))
   (setq _bms_fb_current (float __bms_fb_current))
   (setq _bms_fb_remaining_capacity (float __bms_fb_remaining_capacity))
   self)
  (:bms_fb_voltage
   (&optional __bms_fb_voltage)
   (if __bms_fb_voltage (setq _bms_fb_voltage __bms_fb_voltage)) _bms_fb_voltage)
  (:bms_fb_current
   (&optional __bms_fb_current)
   (if __bms_fb_current (setq _bms_fb_current __bms_fb_current)) _bms_fb_current)
  (:bms_fb_remaining_capacity
   (&optional __bms_fb_remaining_capacity)
   (if __bms_fb_remaining_capacity (setq _bms_fb_remaining_capacity __bms_fb_remaining_capacity)) _bms_fb_remaining_capacity)
  (:serialization-length
   ()
   (+
    ;; float32 _bms_fb_voltage
    4
    ;; float32 _bms_fb_current
    4
    ;; float32 _bms_fb_remaining_capacity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _bms_fb_voltage
       (sys::poke _bms_fb_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bms_fb_current
       (sys::poke _bms_fb_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bms_fb_remaining_capacity
       (sys::poke _bms_fb_remaining_capacity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _bms_fb_voltage
     (setq _bms_fb_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bms_fb_current
     (setq _bms_fb_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bms_fb_remaining_capacity
     (setq _bms_fb_remaining_capacity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::bms_fb :md5sum-) "931076749ca0fa82fb86cdb07acbd6a3")
(setf (get yhs_can_msgs::bms_fb :datatype-) "yhs_can_msgs/bms_fb")
(setf (get yhs_can_msgs::bms_fb :definition-)
      "float32 bms_fb_voltage
float32 bms_fb_current
float32 bms_fb_remaining_capacity

")



(provide :yhs_can_msgs/bms_fb "931076749ca0fa82fb86cdb07acbd6a3")


