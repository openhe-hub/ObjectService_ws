; Auto-generated. Do not edit!


(cl:in-package object_service-srv)


;//! \htmlinclude Demo-request.msg.html

(cl:defclass <Demo-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (num
    :reader num
    :initarg :num
    :type cl:float
    :initform 0.0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass Demo-request (<Demo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Demo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Demo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_service-srv:<Demo-request> is deprecated: use object_service-srv:Demo-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Demo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:command-val is deprecated.  Use object_service-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Demo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:name-val is deprecated.  Use object_service-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Demo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:num-val is deprecated.  Use object_service-srv:num instead.")
  (num m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Demo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:text-val is deprecated.  Use object_service-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Demo-request>) ostream)
  "Serializes a message object of type '<Demo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Demo-request>) istream)
  "Deserializes a message object of type '<Demo-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Demo-request>)))
  "Returns string type for a service object of type '<Demo-request>"
  "object_service/DemoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Demo-request)))
  "Returns string type for a service object of type 'Demo-request"
  "object_service/DemoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Demo-request>)))
  "Returns md5sum for a message object of type '<Demo-request>"
  "e73bb3e5b83204b20d5efa72a500bbb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Demo-request)))
  "Returns md5sum for a message object of type 'Demo-request"
  "e73bb3e5b83204b20d5efa72a500bbb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Demo-request>)))
  "Returns full string definition for message of type '<Demo-request>"
  (cl:format cl:nil "# header~%uint8 command~%string name~%# body~%float32 num~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Demo-request)))
  "Returns full string definition for message of type 'Demo-request"
  (cl:format cl:nil "# header~%uint8 command~%string name~%# body~%float32 num~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Demo-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Demo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Demo-request
    (cl:cons ':command (command msg))
    (cl:cons ':name (name msg))
    (cl:cons ':num (num msg))
    (cl:cons ':text (text msg))
))
;//! \htmlinclude Demo-response.msg.html

(cl:defclass <Demo-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (num
    :reader num
    :initarg :num
    :type cl:float
    :initform 0.0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass Demo-response (<Demo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Demo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Demo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_service-srv:<Demo-response> is deprecated: use object_service-srv:Demo-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Demo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:status-val is deprecated.  Use object_service-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Demo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:num-val is deprecated.  Use object_service-srv:num instead.")
  (num m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Demo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_service-srv:text-val is deprecated.  Use object_service-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Demo-response>) ostream)
  "Serializes a message object of type '<Demo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Demo-response>) istream)
  "Deserializes a message object of type '<Demo-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Demo-response>)))
  "Returns string type for a service object of type '<Demo-response>"
  "object_service/DemoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Demo-response)))
  "Returns string type for a service object of type 'Demo-response"
  "object_service/DemoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Demo-response>)))
  "Returns md5sum for a message object of type '<Demo-response>"
  "e73bb3e5b83204b20d5efa72a500bbb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Demo-response)))
  "Returns md5sum for a message object of type 'Demo-response"
  "e73bb3e5b83204b20d5efa72a500bbb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Demo-response>)))
  "Returns full string definition for message of type '<Demo-response>"
  (cl:format cl:nil "# header~%bool status~%# body~%float32 num~%string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Demo-response)))
  "Returns full string definition for message of type 'Demo-response"
  (cl:format cl:nil "# header~%bool status~%# body~%float32 num~%string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Demo-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Demo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Demo-response
    (cl:cons ':status (status msg))
    (cl:cons ':num (num msg))
    (cl:cons ':text (text msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Demo)))
  'Demo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Demo)))
  'Demo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Demo)))
  "Returns string type for a service object of type '<Demo>"
  "object_service/Demo")