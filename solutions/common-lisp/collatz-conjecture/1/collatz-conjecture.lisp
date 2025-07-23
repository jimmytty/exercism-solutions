(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n)
  (let ((steps 0))
    (cond ((> n 0 ) 
           (loop while (> n 1) do
             (if (= 0 (mod n 2))
                 (setf n (/ n 2))
                 (setf n (+ 1 (* n 3))))
             (setf steps (+ 1 steps))))
          (t (setf steps nil)))
    steps))
