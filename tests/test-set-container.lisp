(in-package #:cl-containers-test)

(deftestsuite test-set-container (cl-containers-test) 
  ((c (make-container 'set-container :initial-contents '(1 2 3 3 3 4)))))

(addtest (test-set-container)
  (ensure-same (size c) 4))
    
(addtest (test-set-container)
  (ensure-same (count-elements c 1) 1)
  (ensure-same (count-elements c 2) 1)
  (ensure-same (count-elements c 3) 1)
  (ensure-same (count-elements c 4) 1)) 
