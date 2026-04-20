;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::lr_wheel_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'lr_wheel_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::LR_WHEEL_FB")
  (make-package "YHS_CAN_MSGS::LR_WHEEL_FB"))

(in-package "ROS")
;;//! \htmlinclude lr_wheel_fb.msg.html


(defclass yhs_can_msgs::lr_wheel_fb
  :super ros::object
  :slots (_lr_wheel_fb_velocity _lr_wheel_fb_pulse ))

(defmethod yhs_can_msgs::lr_wheel_fb
  (:init
   (&key
    ((:lr_wheel_fb_velocity __lr_wheel_fb_velocity) 0.0)
    ((:lr_wheel_fb_pulse __lr_wheel_fb_pulse) 0)
    )
   (send-super :init)
   (setq _lr_wheel_fb_velocity (float __lr_wheel_fb_velocity))
   (setq _lr_wheel_fb_pulse (round __lr_wheel_fb_pulse))
   self)
  (:lr_wheel_fb_velocity
   (&optional __lr_wheel_fb_velocity)
   (if __lr_wheel_fb_velocity (setq _lr_wheel_fb_velocity __lr_wheel_fb_velocity)) _lr_wheel_fb_velocity)
  (:lr_wheel_fb_pulse
   (&optional __lr_wheel_fb_pulse)
   (if __lr_wheel_fb_pulse (setq _lr_wheel_fb_pulse __lr_wheel_fb_pulse)) _lr_wheel_fb_pulse)
  (:serialization-length
   ()
   (+
    ;; float32 _lr_wheel_fb_velocity
    4
    ;; int32 _lr_wheel_fb_pulse
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lr_wheel_fb_velocity
       (sys::poke _lr_wheel_fb_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _lr_wheel_fb_pulse
       (write-long _lr_wheel_fb_pulse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lr_wheel_fb_velocity
     (setq _lr_wheel_fb_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _lr_wheel_fb_pulse
     (setq _lr_wheel_fb_pulse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::lr_wheel_fb :md5sum-) "b0f35d69705bd36b5cd5a57cb194cb97")
(setf (get yhs_can_msgs::lr_wheel_fb :datatype-) "yhs_can_msgs/lr_wheel_fb")
(setf (get yhs_can_msgs::lr_wheel_fb :definition-)
      "float32    lr_wheel_fb_velocity
int32      lr_wheel_fb_pulse

")



(provide :yhs_can_msgs/lr_wheel_fb "b0f35d69705bd36b5cd5a57cb194cb97")


