;; Auto-generated. Do not edit!


(when (boundp 'object_service::Demo)
  (if (not (find-package "OBJECT_SERVICE"))
    (make-package "OBJECT_SERVICE"))
  (shadow 'Demo (find-package "OBJECT_SERVICE")))
(unless (find-package "OBJECT_SERVICE::DEMO")
  (make-package "OBJECT_SERVICE::DEMO"))
(unless (find-package "OBJECT_SERVICE::DEMOREQUEST")
  (make-package "OBJECT_SERVICE::DEMOREQUEST"))
(unless (find-package "OBJECT_SERVICE::DEMORESPONSE")
  (make-package "OBJECT_SERVICE::DEMORESPONSE"))

(in-package "ROS")





(defclass object_service::DemoRequest
  :super ros::object
  :slots (_command _name _num _text ))

(defmethod object_service::DemoRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:name __name) "")
    ((:num __num) 0.0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _name (string __name))
   (setq _num (float __num))
   (setq _text (string __text))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _name
    4 (length _name)
    ;; float32 _num
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _num
       (sys::poke _num (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _num
     (setq _num (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass object_service::DemoResponse
  :super ros::object
  :slots (_status _num _text ))

(defmethod object_service::DemoResponse
  (:init
   (&key
    ((:status __status) nil)
    ((:num __num) 0.0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _num (float __num))
   (setq _text (string __text))
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; float32 _num
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; float32 _num
       (sys::poke _num (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _num
     (setq _num (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass object_service::Demo
  :super ros::object
  :slots ())

(setf (get object_service::Demo :md5sum-) "e73bb3e5b83204b20d5efa72a500bbb3")
(setf (get object_service::Demo :datatype-) "object_service/Demo")
(setf (get object_service::Demo :request) object_service::DemoRequest)
(setf (get object_service::Demo :response) object_service::DemoResponse)

(defmethod object_service::DemoRequest
  (:response () (instance object_service::DemoResponse :init)))

(setf (get object_service::DemoRequest :md5sum-) "e73bb3e5b83204b20d5efa72a500bbb3")
(setf (get object_service::DemoRequest :datatype-) "object_service/DemoRequest")
(setf (get object_service::DemoRequest :definition-)
      "# header
uint8 command
string name
# body
float32 num
string text
---
# header
bool status
# body
float32 num
string text

")

(setf (get object_service::DemoResponse :md5sum-) "e73bb3e5b83204b20d5efa72a500bbb3")
(setf (get object_service::DemoResponse :datatype-) "object_service/DemoResponse")
(setf (get object_service::DemoResponse :definition-)
      "# header
uint8 command
string name
# body
float32 num
string text
---
# header
bool status
# body
float32 num
string text

")



(provide :object_service/Demo "e73bb3e5b83204b20d5efa72a500bbb3")


