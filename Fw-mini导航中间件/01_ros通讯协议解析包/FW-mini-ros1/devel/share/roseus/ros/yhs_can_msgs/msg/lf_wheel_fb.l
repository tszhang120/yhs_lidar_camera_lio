;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::lf_wheel_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'lf_wheel_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::LF_WHEEL_FB")
  (make-package "YHS_CAN_MSGS::LF_WHEEL_FB"))

(in-package "ROS")
;;//! \htmlinclude lf_wheel_fb.msg.html


(defclass yhs_can_msgs::lf_wheel_fb
  :super ros::object
  :slots (_lf_wheel_fb_velocity _lf_wheel_fb_pulse ))

(defmethod yhs_can_msgs::lf_wheel_fb
  (:init
   (&key
    ((:lf_wheel_fb_velocity __lf_wheel_fb_velocity) 0.0)
    ((:lf_wheel_fb_pulse __lf_wheel_fb_pulse) 0)
    )
   (send-super :init)
   (setq _lf_wheel_fb_velocity (float __lf_wheel_fb_velocity))
   (setq _lf_wheel_fb_pulse (round __lf_wheel_fb_pulse))
   self)
  (:lf_wheel_fb_velocity
   (&optional __lf_wheel_fb_velocity)
   (if __lf_wheel_fb_velocity (setq _lf_wheel_fb_velocity __lf_wheel_fb_velocity)) _lf_wheel_fb_velocity)
  (:lf_wheel_fb_pulse
   (&optional __lf_wheel_fb_pulse)
   (if __lf_wheel_fb_pulse (setq _lf_wheel_fb_pulse __lf_wheel_fb_pulse)) _lf_wheel_fb_pulse)
  (:serialization-length
   ()
   (+
    ;; float32 _lf_wheel_fb_velocity
    4
    ;; int32 _lf_wheel_fb_pulse
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lf_wheel_fb_velocity
       (sys::poke _lf_wheel_fb_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _lf_wheel_fb_pulse
       (write-long _lf_wheel_fb_pulse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lf_wheel_fb_velocity
     (setq _lf_wheel_fb_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _lf_wheel_fb_pulse
     (setq _lf_wheel_fb_pulse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::lf_wheel_fb :md5sum-) "eaed15d0b74b6b19568d7b9f82d0a543")
(setf (get yhs_can_msgs::lf_wheel_fb :datatype-) "yhs_can_msgs/lf_wheel_fb")
(setf (get yhs_can_msgs::lf_wheel_fb :definition-)
      "float32    lf_wheel_fb_velocity
int32      lf_wheel_fb_pulse

")



(provide :yhs_can_msgs/lf_wheel_fb "eaed15d0b74b6b19568d7b9f82d0a543")


