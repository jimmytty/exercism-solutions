(defpackage :difference-of-squares
  (:use :cl)
  (:export :sum-of-squares
           :square-of-sum
           :difference))

(in-package :difference-of-squares)

(defun square-of-sum (n)
  "Calculates the square of the sum for a given number."
  (let ((sum 0))
    (loop for i from 1 to n do (setf sum (+ sum i)))
    (* sum sum) ))

(defun sum-of-squares (n)
  "Calculates the sum of squares for a given number."
  (let ((sum 0 ))
    (loop for i from 1 to n do (setf sum (+ sum (* i i))))
    sum))

(defun difference (n)
  "Finds the diff. between the square of the sum and the sum of the squares."
  (- (square-of-sum n) (sum-of-squares n)))
