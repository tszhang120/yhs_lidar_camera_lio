;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::steering_ctrl_cmd)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'steering_ctrl_cmd (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::STEERING_CTRL_CMD")
  (make-package "YHS_CAN_MSGS::STEERING_CTRL_CMD"))

(in-package "ROS")
;;//! \htmlinclude steering_ctrl_cmd.msg.html


(defclass yhs_can_msgs::steering_ctrl_cmd
  :super ros::object
  :slots (_ctrl_cmd_gear _steering_ctrl_cmd_velocity _steering_ctrl_cmd_steering ))

(defmethod yhs_can_msgs::steering_ctrl_cmd
  (:init
   (&key
    ((:ctrl_cmd_gear __ctrl_cmd_gear) 0)
    ((:steering_ctrl_cmd_velocity __steering_ctrl_cmd_velocity) 0.0)
    ((:steering_ctrl_cmd_steering __steering_ctrl_cmd_steering) 0.0)
    )
   (send-super :init)
   (setq _ctrl_cmd_gear (round __ctrl_cmd_gear))
   (setq _steering_ctrl_cmd_velocity (float __steering_ctrl_cmd_velocity))
   (setq _steering_ctrl_cmd_steering (float __steering_ctrl_cmd_steering))
   self)
  (:ctrl_cmd_gear
   (&optional __ctrl_cmd_gear)
   (if __ctrl_cmd_gear (setq _ctrl_cmd_gear __ctrl_cmd_gear)) _ctrl_cmd_gear)
  (:steering_ctrl_cmd_velocity
   (&optional __steering_ctrl_cmd_velocity)
   (if __steering_ctrl_cmd_velocity (setq _steering_ctrl_cmd_velocity __steering_ctrl_cmd_velocity)) _steering_ctrl_cmd_velocity)
  (:steering_ctrl_cmd_steering
   (&optional __steering_ctrl_cmd_steering)
   (if __steering_ctrl_cmd_steering (setq _steering_ctrl_cmd_steering __steering_ctrl_cmd_steering)) _steering_ctrl_cmd_steering)
  (:serialization-length
   ()
   (+
    ;; uint8 _ctrl_cmd_gear
    1
    ;; float32 _steering_ctrl_cmd_velocity
    4
    ;; float32 _steering_ctrl_cmd_steering
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ctrl_cmd_gear
       (write-byte _ctrl_cmd_gear s)
     ;; float32 _steering_ctrl_cmd_velocity
       (sys::poke _steering_ctrl_cmd_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_ctrl_cmd_steering
       (sys::poke _steering_ctrl_cmd_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ctrl_cmd_gear
     (setq _ctrl_cmd_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _steering_ctrl_cmd_velocity
     (setq _steering_ctrl_cmd_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_ctrl_cmd_steering
     (setq _steering_ctrl_cmd_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::steering_ctrl_cmd :md5sum-) "b8e9d8788608c044b8a724447419e8d0")
(setf (get yhs_can_msgs::steering_ctrl_cmd :datatype-) "yhs_can_msgs/steering_ctrl_cmd")
(setf (get yhs_can_msgs::steering_ctrl_cmd :definition-)
      "uint8    ctrl_cmd_gear
float32  steering_ctrl_cmd_velocity
float32  steering_ctrl_cmd_steering

")



(provide :yhs_can_msgs/steering_ctrl_cmd "b8e9d8788608c044b8a724447419e8d0")


