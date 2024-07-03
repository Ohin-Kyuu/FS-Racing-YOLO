;; Auto-generated. Do not edit!


(when (boundp 'yolo::NamedPoseArray)
  (if (not (find-package "YOLO"))
    (make-package "YOLO"))
  (shadow 'NamedPoseArray (find-package "YOLO")))
(unless (find-package "YOLO::NAMEDPOSEARRAY")
  (make-package "YOLO::NAMEDPOSEARRAY"))

(in-package "ROS")
;;//! \htmlinclude NamedPoseArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass yolo::NamedPoseArray
  :super ros::object
  :slots (_names _poses ))

(defmethod yolo::NamedPoseArray
  (:init
   (&key
    ((:names __names) ())
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _names __names)
   (setq _poses __poses)
   self)
  (:names
   (&rest __names)
   (if (keywordp (car __names))
       (send* _names __names)
     (progn
       (if __names (setq _names (car __names)))
       _names)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String[] _names
    (apply #'+ (send-all _names :serialization-length)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _names)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolo::NamedPoseArray :md5sum-) "d55d7c9033cda1a6709b27c7341d0b57")
(setf (get yolo::NamedPoseArray :datatype-) "yolo/NamedPoseArray")
(setf (get yolo::NamedPoseArray :definition-)
      "std_msgs/String[] names
geometry_msgs/Pose[] poses

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :yolo/NamedPoseArray "d55d7c9033cda1a6709b27c7341d0b57")


