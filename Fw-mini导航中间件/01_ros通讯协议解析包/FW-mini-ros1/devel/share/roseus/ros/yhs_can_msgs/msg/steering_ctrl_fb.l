;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::steering_ctrl_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'steering_ctrl_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::STEERING_CTRL_FB")
  (make-package "YHS_CAN_MSGS::STEERING_CTRL_FB"))

(in-package "ROS")
;;//! \htmlinclude steering_ctrl_fb.msg.html


(defclass yhs_can_msgs::steering_ctrl_fb
  :super ros::object
  :slots (_steering_ctrl_fb_gear _steering_ctrl_fb_velocity _steering_ctrl_fb_steering ))

(defmethod yhs_can_msgs::steering_ctrl_fb
  (:init
   (&key
    ((:steering_ctrl_fb_gear __steering_ctrl_fb_gear) 0)
    ((:steering_ctrl_fb_velocity __steering_ctrl_fb_velocity) 0.0)
    ((:steering_ctrl_fb_steering __steering_ctrl_fb_steering) 0.0)
    )
   (send-super :init)
   (setq _steering_ctrl_fb_gear (round __steering_ctrl_fb_gear))
   (setq _steering_ctrl_fb_velocity (float __steering_ctrl_fb_velocity))
   (setq _steering_ctrl_fb_steering (float __steering_ctrl_fb_steering))
   self)
  (:steering_ctrl_fb_gear
   (&optional __steering_ctrl_fb_gear)
   (if __steering_ctrl_fb_gear (setq _steering_ctrl_fb_gear __steering_ctrl_fb_gear)) _steering_ctrl_fb_gear)
  (:steering_ctrl_fb_velocity
   (&optional __steering_ctrl_fb_velocity)
   (if __steering_ctrl_fb_velocity (setq _steering_ctrl_fb_velocity __steering_ctrl_fb_velocity)) _steering_ctrl_fb_velocity)
  (:steering_ctrl_fb_steering
   (&optional __steering_ctrl_fb_steering)
   (if __steering_ctrl_fb_steering (setq _steering_ctrl_fb_steering __steering_ctrl_fb_steering)) _steering_ctrl_fb_steering)
  (:serialization-length
   ()
   (+
    ;; uint8 _steering_ctrl_fb_gear
    1
    ;; float32 _steering_ctrl_fb_velocity
    4
    ;; float32 _steering_ctrl_fb_steering
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _steering_ctrl_fb_gear
       (write-byte _steering_ctrl_fb_gear s)
     ;; float32 _steering_ctrl_fb_velocity
       (sys::poke _steering_ctrl_fb_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_ctrl_fb_steering
       (sys::poke _steering_ctrl_fb_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _steering_ctrl_fb_gear
     (setq _steering_ctrl_fb_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _steering_ctrl_fb_velocity
     (setq _steering_ctrl_fb_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_ctrl_fb_steering
     (setq _steering_ctrl_fb_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::steering_ctrl_fb :md5sum-) "3c48518d11e7c77d61a72dc84b8f68b8")
(setf (get yhs_can_msgs::steering_ctrl_fb :datatype-) "yhs_can_msgs/steering_ctrl_fb")
(setf (get yhs_can_msgs::steering_ctrl_fb :definition-)
      "uint8    steering_ctrl_fb_gear
float32  steering_ctrl_fb_velocity
float32  steering_ctrl_fb_steering

")



(provide :yhs_can_msgs/steering_ctrl_fb "3c48518d11e7c77d61a72dc84b8f68b8")


