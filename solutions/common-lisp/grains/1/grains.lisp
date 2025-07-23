(defpackage :grains
  (:use :cl)
  (:export :square :total))
(in-package :grains)

(defun square (n)
  (let ((sum 1))
    (loop for i from 1 to (- n 1) do
      (setf sum (* sum 2)))
    sum))

(defun total () (- (square 65) 1))
