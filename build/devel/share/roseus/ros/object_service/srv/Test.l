;; Auto-generated. Do not edit!


(when (boundp 'object_service::Test)
  (if (not (find-package "OBJECT_SERVICE"))
    (make-package "OBJECT_SERVICE"))
  (shadow 'Test (find-package "OBJECT_SERVICE")))
(unless (find-package "OBJECT_SERVICE::TEST")
  (make-package "OBJECT_SERVICE::TEST"))
(unless (find-package "OBJECT_SERVICE::TESTREQUEST")
  (make-package "OBJECT_SERVICE::TESTREQUEST"))
(unless (find-package "OBJECT_SERVICE::TESTRESPONSE")
  (make-package "OBJECT_SERVICE::TESTRESPONSE"))

(in-package "ROS")





(defclass object_service::TestRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod object_service::TestRequest
  (:init
   (&key
    ((:num1 __num1) 0.0)
    ((:num2 __num2) 0.0)
    )
   (send-super :init)
   (setq _num1 (float __num1))
   (setq _num2 (float __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; float64 _num1
    8
    ;; float64 _num2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num1
       (sys::poke _num1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _num2
       (sys::poke _num2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num1
     (setq _num1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _num2
     (setq _num2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass object_service::TestResponse
  :super ros::object
  :slots (_sum ))

(defmethod object_service::TestResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sum
     (setq _sum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass object_service::Test
  :super ros::object
  :slots ())

(setf (get object_service::Test :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get object_service::Test :datatype-) "object_service/Test")
(setf (get object_service::Test :request) object_service::TestRequest)
(setf (get object_service::Test :response) object_service::TestResponse)

(defmethod object_service::TestRequest
  (:response () (instance object_service::TestResponse :init)))

(setf (get object_service::TestRequest :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get object_service::TestRequest :datatype-) "object_service/TestRequest")
(setf (get object_service::TestRequest :definition-)
      "float64 num1
float64 num2
---
float64 sum
")

(setf (get object_service::TestResponse :md5sum-) "645c2ebd161afbc4888fe6d5e4012e2f")
(setf (get object_service::TestResponse :datatype-) "object_service/TestResponse")
(setf (get object_service::TestResponse :definition-)
      "float64 num1
float64 num2
---
float64 sum
")



(provide :object_service/Test "645c2ebd161afbc4888fe6d5e4012e2f")


