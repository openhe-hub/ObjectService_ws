; Auto-generated. Do not edit!


(cl:in-package object_service-srv)


;//! \htmlinclude Test-request.msg.html

(cl:defclass <Test-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:float
    :initform 0.0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:float
    :initform 0.0))
)

(cl:defclass Test-request (<Test-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Test-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Test-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_service-srv:<Test-request> is deprecated: use object_service-srv:Test-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <Test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:num1-val is deprecated.  Use object_service-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <Test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:num2-val is deprecated.  Use object_service-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Test-request>) ostream)
  "Serializes a message object of type '<Test-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Test-request>) istream)
  "Deserializes a message object of type '<Test-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Test-request>)))
  "Returns string type for a service object of type '<Test-request>"
  "object_service/TestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Test-request)))
  "Returns string type for a service object of type 'Test-request"
  "object_service/TestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Test-request>)))
  "Returns md5sum for a message object of type '<Test-request>"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Test-request)))
  "Returns md5sum for a message object of type 'Test-request"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Test-request>)))
  "Returns full string definition for message of type '<Test-request>"
  (cl:format cl:nil "float64 num1~%float64 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Test-request)))
  "Returns full string definition for message of type 'Test-request"
  (cl:format cl:nil "float64 num1~%float64 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Test-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Test-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Test-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude Test-response.msg.html

(cl:defclass <Test-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:float
    :initform 0.0))
)

(cl:defclass Test-response (<Test-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Test-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Test-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_service-srv:<Test-response> is deprecated: use object_service-srv:Test-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <Test-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:sum-val is deprecated.  Use object_service-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Test-response>) ostream)
  "Serializes a message object of type '<Test-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Test-response>) istream)
  "Deserializes a message object of type '<Test-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sum) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Test-response>)))
  "Returns string type for a service object of type '<Test-response>"
  "object_service/TestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Test-response)))
  "Returns string type for a service object of type 'Test-response"
  "object_service/TestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Test-response>)))
  "Returns md5sum for a message object of type '<Test-response>"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Test-response)))
  "Returns md5sum for a message object of type 'Test-response"
  "645c2ebd161afbc4888fe6d5e4012e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Test-response>)))
  "Returns full string definition for message of type '<Test-response>"
  (cl:format cl:nil "float64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Test-response)))
  "Returns full string definition for message of type 'Test-response"
  (cl:format cl:nil "float64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Test-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Test-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Test-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Test)))
  'Test-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Test)))
  'Test-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Test)))
  "Returns string type for a service object of type '<Test>"
  "object_service/Test")