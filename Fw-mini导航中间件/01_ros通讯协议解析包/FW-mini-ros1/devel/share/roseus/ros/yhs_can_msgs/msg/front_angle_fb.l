;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::front_angle_fb)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'front_angle_fb (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::FRONT_ANGLE_FB")
  (make-package "YHS_CAN_MSGS::FRONT_ANGLE_FB"))

(in-package "ROS")
;;//! \htmlinclude front_angle_fb.msg.html


(defclass yhs_can_msgs::front_angle_fb
  :super ros::object
  :slots (_front_angle_fb_l _front_angle_fb_r ))

(defmethod yhs_can_msgs::front_angle_fb
  (:init
   (&key
    ((:front_angle_fb_l __front_angle_fb_l) 0.0)
    ((:front_angle_fb_r __front_angle_fb_r) 0.0)
    )
   (send-super :init)
   (setq _front_angle_fb_l (float __front_angle_fb_l))
   (setq _front_angle_fb_r (float __front_angle_fb_r))
   self)
  (:front_angle_fb_l
   (&optional __front_angle_fb_l)
   (if __front_angle_fb_l (setq _front_angle_fb_l __front_angle_fb_l)) _front_angle_fb_l)
  (:front_angle_fb_r
   (&optional __front_angle_fb_r)
   (if __front_angle_fb_r (setq _front_angle_fb_r __front_angle_fb_r)) _front_angle_fb_r)
  (:serialization-length
   ()
   (+
    ;; float32 _front_angle_fb_l
    4
    ;; float32 _front_angle_fb_r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front_angle_fb_l
       (sys::poke _front_angle_fb_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_angle_fb_r
       (sys::poke _front_angle_fb_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front_angle_fb_l
     (setq _front_angle_fb_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_angle_fb_r
     (setq _front_angle_fb_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::front_angle_fb :md5sum-) "d682109cd37a69f95f75010fef867d75")
(setf (get yhs_can_msgs::front_angle_fb :datatype-) "yhs_can_msgs/front_angle_fb")
(setf (get yhs_can_msgs::front_angle_fb :definition-)
      "float32  front_angle_fb_l
float32  front_angle_fb_r

")



(provide :yhs_can_msgs/front_angle_fb "d682109cd37a69f95f75010fef867d75")


