;; Auto-generated. Do not edit!


(when (boundp 'robtrj::var)
  (if (not (find-package "ROBTRJ"))
    (make-package "ROBTRJ"))
  (shadow 'var (find-package "ROBTRJ")))
(unless (find-package "ROBTRJ::VAR")
  (make-package "ROBTRJ::VAR"))

(in-package "ROS")
;;//! \htmlinclude var.msg.html


(defclass robtrj::var
  :super ros::object
  :slots (_x _y _theta _v _w _x1 _y1 _theta1 ))

(defmethod robtrj::var
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:v __v) 0.0)
    ((:w __w) 0.0)
    ((:x1 __x1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y1 __y1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta1 __theta1) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _v (float __v))
   (setq _w (float __w))
   (setq _x1 __x1)
   (setq _y1 __y1)
   (setq _theta1 __theta1)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _v
    8
    ;; float64 _w
    8
    ;; float64[] _x1
    (* 8    (length _x1)) 4
    ;; float64[] _y1
    (* 8    (length _y1)) 4
    ;; float64[] _theta1
    (* 8    (length _theta1)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _x1
     (write-long (length _x1) s)
     (dotimes (i (length _x1))
       (sys::poke (elt _x1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y1
     (write-long (length _y1) s)
     (dotimes (i (length _y1))
       (sys::poke (elt _y1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _theta1
     (write-long (length _theta1) s)
     (dotimes (i (length _theta1))
       (sys::poke (elt _theta1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _x1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _theta1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get robtrj::var :md5sum-) "71228efca7231d105d672dee9dd6a55c")
(setf (get robtrj::var :datatype-) "robtrj/var")
(setf (get robtrj::var :definition-)
      "float64 x
float64 y
float64 theta
float64 v
float64 w
float64[] x1
float64[] y1
float64[] theta1

")



(provide :robtrj/var "71228efca7231d105d672dee9dd6a55c")


