;; Auto-generated. Do not edit!


(when (boundp 'yhs_can_msgs::ctrl_cmd)
  (if (not (find-package "YHS_CAN_MSGS"))
    (make-package "YHS_CAN_MSGS"))
  (shadow 'ctrl_cmd (find-package "YHS_CAN_MSGS")))
(unless (find-package "YHS_CAN_MSGS::CTRL_CMD")
  (make-package "YHS_CAN_MSGS::CTRL_CMD"))

(in-package "ROS")
;;//! \htmlinclude ctrl_cmd.msg.html


(defclass yhs_can_msgs::ctrl_cmd
  :super ros::object
  :slots (_ctrl_cmd_gear _ctrl_cmd_x_linear _ctrl_cmd_z_angular _ctrl_cmd_y_linear ))

(defmethod yhs_can_msgs::ctrl_cmd
  (:init
   (&key
    ((:ctrl_cmd_gear __ctrl_cmd_gear) 0)
    ((:ctrl_cmd_x_linear __ctrl_cmd_x_linear) 0.0)
    ((:ctrl_cmd_z_angular __ctrl_cmd_z_angular) 0.0)
    ((:ctrl_cmd_y_linear __ctrl_cmd_y_linear) 0.0)
    )
   (send-super :init)
   (setq _ctrl_cmd_gear (round __ctrl_cmd_gear))
   (setq _ctrl_cmd_x_linear (float __ctrl_cmd_x_linear))
   (setq _ctrl_cmd_z_angular (float __ctrl_cmd_z_angular))
   (setq _ctrl_cmd_y_linear (float __ctrl_cmd_y_linear))
   self)
  (:ctrl_cmd_gear
   (&optional __ctrl_cmd_gear)
   (if __ctrl_cmd_gear (setq _ctrl_cmd_gear __ctrl_cmd_gear)) _ctrl_cmd_gear)
  (:ctrl_cmd_x_linear
   (&optional __ctrl_cmd_x_linear)
   (if __ctrl_cmd_x_linear (setq _ctrl_cmd_x_linear __ctrl_cmd_x_linear)) _ctrl_cmd_x_linear)
  (:ctrl_cmd_z_angular
   (&optional __ctrl_cmd_z_angular)
   (if __ctrl_cmd_z_angular (setq _ctrl_cmd_z_angular __ctrl_cmd_z_angular)) _ctrl_cmd_z_angular)
  (:ctrl_cmd_y_linear
   (&optional __ctrl_cmd_y_linear)
   (if __ctrl_cmd_y_linear (setq _ctrl_cmd_y_linear __ctrl_cmd_y_linear)) _ctrl_cmd_y_linear)
  (:serialization-length
   ()
   (+
    ;; uint8 _ctrl_cmd_gear
    1
    ;; float32 _ctrl_cmd_x_linear
    4
    ;; float32 _ctrl_cmd_z_angular
    4
    ;; float32 _ctrl_cmd_y_linear
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ctrl_cmd_gear
       (write-byte _ctrl_cmd_gear s)
     ;; float32 _ctrl_cmd_x_linear
       (sys::poke _ctrl_cmd_x_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ctrl_cmd_z_angular
       (sys::poke _ctrl_cmd_z_angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ctrl_cmd_y_linear
       (sys::poke _ctrl_cmd_y_linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ctrl_cmd_gear
     (setq _ctrl_cmd_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _ctrl_cmd_x_linear
     (setq _ctrl_cmd_x_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ctrl_cmd_z_angular
     (setq _ctrl_cmd_z_angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ctrl_cmd_y_linear
     (setq _ctrl_cmd_y_linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yhs_can_msgs::ctrl_cmd :md5sum-) "e0a0e35016e404c7e4386a62c7a595e7")
(setf (get yhs_can_msgs::ctrl_cmd :datatype-) "yhs_can_msgs/ctrl_cmd")
(setf (get yhs_can_msgs::ctrl_cmd :definition-)
      "uint8    ctrl_cmd_gear
float32  ctrl_cmd_x_linear
float32  ctrl_cmd_z_angular
float32  ctrl_cmd_y_linear

")



(provide :yhs_can_msgs/ctrl_cmd "e0a0e35016e404c7e4386a62c7a595e7")


