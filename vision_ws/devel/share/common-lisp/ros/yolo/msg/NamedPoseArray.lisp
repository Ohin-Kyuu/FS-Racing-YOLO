; Auto-generated. Do not edit!


(cl:in-package yolo-msg)


;//! \htmlinclude NamedPoseArray.msg.html

(cl:defclass <NamedPoseArray> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass NamedPoseArray (<NamedPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NamedPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NamedPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo-msg:<NamedPoseArray> is deprecated: use yolo-msg:NamedPoseArray instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <NamedPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo-msg:names-val is deprecated.  Use yolo-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <NamedPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo-msg:poses-val is deprecated.  Use yolo-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NamedPoseArray>) ostream)
  "Serializes a message object of type '<NamedPoseArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NamedPoseArray>) istream)
  "Deserializes a message object of type '<NamedPoseArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NamedPoseArray>)))
  "Returns string type for a message object of type '<NamedPoseArray>"
  "yolo/NamedPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NamedPoseArray)))
  "Returns string type for a message object of type 'NamedPoseArray"
  "yolo/NamedPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NamedPoseArray>)))
  "Returns md5sum for a message object of type '<NamedPoseArray>"
  "d55d7c9033cda1a6709b27c7341d0b57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NamedPoseArray)))
  "Returns md5sum for a message object of type 'NamedPoseArray"
  "d55d7c9033cda1a6709b27c7341d0b57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NamedPoseArray>)))
  "Returns full string definition for message of type '<NamedPoseArray>"
  (cl:format cl:nil "std_msgs/String[] names~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NamedPoseArray)))
  "Returns full string definition for message of type 'NamedPoseArray"
  (cl:format cl:nil "std_msgs/String[] names~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NamedPoseArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NamedPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'NamedPoseArray
    (cl:cons ':names (names msg))
    (cl:cons ':poses (poses msg))
))
