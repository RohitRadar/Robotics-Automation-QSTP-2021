;; Auto-generated. Do not edit!


(when (boundp 'turtbot::angvel)
  (if (not (find-package "TURTBOT"))
    (make-package "TURTBOT"))
  (shadow 'angvel (find-package "TURTBOT")))
(unless (find-package "TURTBOT::ANGVEL")
  (make-package "TURTBOT::ANGVEL"))
(unless (find-package "TURTBOT::ANGVELREQUEST")
  (make-package "TURTBOT::ANGVELREQUEST"))
(unless (find-package "TURTBOT::ANGVELRESPONSE")
  (make-package "TURTBOT::ANGVELRESPONSE"))

(in-package "ROS")





(defclass turtbot::angvelRequest
  :super ros::object
  :slots (_radius ))

(defmethod turtbot::angvelRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtbot::angvelResponse
  :super ros::object
  :slots (_vel ))

(defmethod turtbot::angvelResponse
  (:init
   (&key
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _vel (float __vel))
   self)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float32 _vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtbot::angvel
  :super ros::object
  :slots ())

(setf (get turtbot::angvel :md5sum-) "e5f38ccc8932cb1197b8085a4660fcbb")
(setf (get turtbot::angvel :datatype-) "turtbot/angvel")
(setf (get turtbot::angvel :request) turtbot::angvelRequest)
(setf (get turtbot::angvel :response) turtbot::angvelResponse)

(defmethod turtbot::angvelRequest
  (:response () (instance turtbot::angvelResponse :init)))

(setf (get turtbot::angvelRequest :md5sum-) "e5f38ccc8932cb1197b8085a4660fcbb")
(setf (get turtbot::angvelRequest :datatype-) "turtbot/angvelRequest")
(setf (get turtbot::angvelRequest :definition-)
      "float32 radius
---
float32 vel

")

(setf (get turtbot::angvelResponse :md5sum-) "e5f38ccc8932cb1197b8085a4660fcbb")
(setf (get turtbot::angvelResponse :datatype-) "turtbot/angvelResponse")
(setf (get turtbot::angvelResponse :definition-)
      "float32 radius
---
float32 vel

")



(provide :turtbot/angvel "e5f38ccc8932cb1197b8085a4660fcbb")


