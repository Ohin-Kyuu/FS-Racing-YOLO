;; Auto-generated. Do not edit!


(when (boundp 'yolo::LabeledPointArray)
  (if (not (find-package "YOLO"))
    (make-package "YOLO"))
  (shadow 'LabeledPointArray (find-package "YOLO")))
(unless (find-package "YOLO::LABELEDPOINTARRAY")
  (make-package "YOLO::LABELEDPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude LabeledPointArray.msg.html


(defclass yolo::LabeledPointArray
  :super ros::object
  :slots (_labels _x _y _z ))

(defmethod yolo::LabeledPointArray
  (:init
   (&key
    ((:labels __labels) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _labels __labels)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   self)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; string[] _labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labels)) 4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get yolo::LabeledPointArray :md5sum-) "62cb64257776a1b8c1f5d6b0b5aac094")
(setf (get yolo::LabeledPointArray :datatype-) "yolo/LabeledPointArray")
(setf (get yolo::LabeledPointArray :definition-)
      "string[] labels
float32[] x
float32[] y
float32[] z
")



(provide :yolo/LabeledPointArray "62cb64257776a1b8c1f5d6b0b5aac094")


