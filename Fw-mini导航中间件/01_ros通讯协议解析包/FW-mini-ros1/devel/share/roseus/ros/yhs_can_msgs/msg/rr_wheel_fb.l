;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::rr_wheel_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'rr_wheel_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::RR_WHEEL_FB")
  (make-package "YHS_CAN_MSGS::RR_WHEEL_FB"))

(in-package "ROS")
;;//! \htmlinclude rr_wheel_fb.msg.html


(defclass yhs_can_msgs::rr_wheel_fb
  :super ros::object
  :slots (_rr_wheel_fb_velocity _rr_wheel_fb_pulse ))

(defmethod yhs_can_msgs::rr_wheel_fb
  (:init
   (&key
    ((:rr_wheel_fb_velocity __rr_wheel_fb_velocity) 0.0)
    ((:rr_wheel_fb_pulse __rr_wheel_fb_pulse) 0)
    )
   (send-super :init)
   (setq _rr_wheel_fb_velocity (float __rr_wheel_fb_velocity))
   (setq _rr_wheel_fb_pulse (round __rr_wheel_fb_pulse))
   self)
  (:rr_wheel_fb_velocity
   (&optional __rr_wheel_fb_velocity)
   (if __rr_wheel_fb_velocity (setq _rr_wheel_fb_velocity __rr_wheel_fb_velocity)) _rr_wheel_fb_velocity)
  (:rr_wheel_fb_pulse
   (&optional __rr_wheel_fb_pulse)
   (if __rr_wheel_fb_pulse (setq _rr_wheel_fb_pulse __rr_wheel_fb_pulse)) _rr_wheel_fb_pulse)
  (:serialization-length
   ()
   (+
    ;; float32 _rr_wheel_fb_velocity
    4
    ;; int32 _rr_wheel_fb_pulse
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rr_wheel_fb_velocity
       (sys::poke _rr_wheel_fb_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _rr_wheel_fb_pulse
       (write-long _rr_wheel_fb_pulse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rr_wheel_fb_velocity
     (setq _rr_wheel_fb_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _rr_wheel_fb_pulse
     (setq _rr_wheel_fb_pulse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::rr_wheel_fb :md5sum-) "324129a5017e82d81661c682ea2777a3")
(setf (get yhs_can_msgs::rr_wheel_fb :datatype-) "yhs_can_msgs/rr_wheel_fb")
(setf (get yhs_can_msgs::rr_wheel_fb :definition-)
      "float32    rr_wheel_fb_velocity
int32      rr_wheel_fb_pulse

")



(provide :yhs_can_msgs/rr_wheel_fb "324129a5017e82d81661c682ea2777a3")


