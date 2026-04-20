;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::rear_angle_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'rear_angle_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::REAR_ANGLE_FB")
  (make-package "YHS_CAN_MSGS::REAR_ANGLE_FB"))

(in-package "ROS")
;;//! \htmlinclude rear_angle_fb.msg.html


(defclass yhs_can_msgs::rear_angle_fb
  :super ros::object
  :slots (_rear_angle_fb_l _rear_angle_fb_r ))

(defmethod yhs_can_msgs::rear_angle_fb
  (:init
   (&key
    ((:rear_angle_fb_l __rear_angle_fb_l) 0.0)
    ((:rear_angle_fb_r __rear_angle_fb_r) 0.0)
    )
   (send-super :init)
   (setq _rear_angle_fb_l (float __rear_angle_fb_l))
   (setq _rear_angle_fb_r (float __rear_angle_fb_r))
   self)
  (:rear_angle_fb_l
   (&optional __rear_angle_fb_l)
   (if __rear_angle_fb_l (setq _rear_angle_fb_l __rear_angle_fb_l)) _rear_angle_fb_l)
  (:rear_angle_fb_r
   (&optional __rear_angle_fb_r)
   (if __rear_angle_fb_r (setq _rear_angle_fb_r __rear_angle_fb_r)) _rear_angle_fb_r)
  (:serialization-length
   ()
   (+
    ;; float32 _rear_angle_fb_l
    4
    ;; float32 _rear_angle_fb_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rear_angle_fb_l
       (sys::poke _rear_angle_fb_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_angle_fb_r
       (sys::poke _rear_angle_fb_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rear_angle_fb_l
     (setq _rear_angle_fb_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_angle_fb_r
     (setq _rear_angle_fb_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::rear_angle_fb :md5sum-) "ad4dde667634fd5c9a4f1ca6f05e41e4")
(setf (get yhs_can_msgs::rear_angle_fb :datatype-) "yhs_can_msgs/rear_angle_fb")
(setf (get yhs_can_msgs::rear_angle_fb :definition-)
      "float32  rear_angle_fb_l
float32  rear_angle_fb_r

")



(provide :yhs_can_msgs/rear_angle_fb "ad4dde667634fd5c9a4f1ca6f05e41e4")


