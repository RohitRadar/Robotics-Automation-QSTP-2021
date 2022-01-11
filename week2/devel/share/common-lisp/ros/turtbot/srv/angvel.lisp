; Auto-generated. Do not edit!


(cl:in-package turtbot-srv)


;//! \htmlinclude angvel-request.msg.html

(cl:defclass <angvel-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass angvel-request (<angvel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angvel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angvel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtbot-srv:<angvel-request> is deprecated: use turtbot-srv:angvel-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <angvel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtbot-srv:radius-val is deprecated.  Use turtbot-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angvel-request>) ostream)
  "Serializes a message object of type '<angvel-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angvel-request>) istream)
  "Deserializes a message object of type '<angvel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angvel-request>)))
  "Returns string type for a service object of type '<angvel-request>"
  "turtbot/angvelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angvel-request)))
  "Returns string type for a service object of type 'angvel-request"
  "turtbot/angvelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angvel-request>)))
  "Returns md5sum for a message object of type '<angvel-request>"
  "e5f38ccc8932cb1197b8085a4660fcbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angvel-request)))
  "Returns md5sum for a message object of type 'angvel-request"
  "e5f38ccc8932cb1197b8085a4660fcbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angvel-request>)))
  "Returns full string definition for message of type '<angvel-request>"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angvel-request)))
  "Returns full string definition for message of type 'angvel-request"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angvel-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angvel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'angvel-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude angvel-response.msg.html

(cl:defclass <angvel-response> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass angvel-response (<angvel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angvel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angvel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtbot-srv:<angvel-response> is deprecated: use turtbot-srv:angvel-response instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <angvel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtbot-srv:vel-val is deprecated.  Use turtbot-srv:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angvel-response>) ostream)
  "Serializes a message object of type '<angvel-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angvel-response>) istream)
  "Deserializes a message object of type '<angvel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angvel-response>)))
  "Returns string type for a service object of type '<angvel-response>"
  "turtbot/angvelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angvel-response)))
  "Returns string type for a service object of type 'angvel-response"
  "turtbot/angvelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angvel-response>)))
  "Returns md5sum for a message object of type '<angvel-response>"
  "e5f38ccc8932cb1197b8085a4660fcbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angvel-response)))
  "Returns md5sum for a message object of type 'angvel-response"
  "e5f38ccc8932cb1197b8085a4660fcbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angvel-response>)))
  "Returns full string definition for message of type '<angvel-response>"
  (cl:format cl:nil "float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angvel-response)))
  "Returns full string definition for message of type 'angvel-response"
  (cl:format cl:nil "float32 vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angvel-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angvel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'angvel-response
    (cl:cons ':vel (vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'angvel)))
  'angvel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'angvel)))
  'angvel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angvel)))
  "Returns string type for a service object of type '<angvel>"
  "turtbot/angvel")