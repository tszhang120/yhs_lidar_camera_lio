;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::rf_wheel_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'rf_wheel_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::RF_WHEEL_FB")
  (make-package "YHS_CAN_MSGS::RF_WHEEL_FB"))

(in-package "ROS")
;;//! \htmlinclude rf_wheel_fb.msg.html


(defclass yhs_can_msgs::rf_wheel_fb
  :super ros::object
  :slots (_rf_wheel_fb_velocity _rf_wheel_fb_pulse ))

(defmethod yhs_can_msgs::rf_wheel_fb
  (:init
   (&key
    ((:rf_wheel_fb_velocity __rf_wheel_fb_velocity) 0.0)
    ((:rf_wheel_fb_pulse __rf_wheel_fb_pulse) 0)
    )
   (send-super :init)
   (setq _rf_wheel_fb_velocity (float __rf_wheel_fb_velocity))
   (setq _rf_wheel_fb_pulse (round __rf_wheel_fb_pulse))
   self)
  (:rf_wheel_fb_velocity
   (&optional __rf_wheel_fb_velocity)
   (if __rf_wheel_fb_velocity (setq _rf_wheel_fb_velocity __rf_wheel_fb_velocity)) _rf_wheel_fb_velocity)
  (:rf_wheel_fb_pulse
   (&optional __rf_wheel_fb_pulse)
   (if __rf_wheel_fb_pulse (setq _rf_wheel_fb_pulse __rf_wheel_fb_pulse)) _rf_wheel_fb_pulse)
  (:serialization-length
   ()
   (+
    ;; float32 _rf_wheel_fb_velocity
    4
    ;; int32 _rf_wheel_fb_pulse
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rf_wheel_fb_velocity
       (sys::poke _rf_wheel_fb_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _rf_wheel_fb_pulse
       (write-long _rf_wheel_fb_pulse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rf_wheel_fb_velocity
     (setq _rf_wheel_fb_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _rf_wheel_fb_pulse
     (setq _rf_wheel_fb_pulse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::rf_wheel_fb :md5sum-) "c39cd0a425deda982cb7e6e23fde4945")
(setf (get yhs_can_msgs::rf_wheel_fb :datatype-) "yhs_can_msgs/rf_wheel_fb")
(setf (get yhs_can_msgs::rf_wheel_fb :definition-)
      "float32    rf_wheel_fb_velocity
int32      rf_wheel_fb_pulse

")



(provide :yhs_can_msgs/rf_wheel_fb "c39cd0a425deda982cb7e6e23fde4945")


