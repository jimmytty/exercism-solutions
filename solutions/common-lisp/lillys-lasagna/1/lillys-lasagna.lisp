(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven()
  "Define the expected oven time in minutes"
  337)

(defun remaining-minutes-in-oven(actual-minutes)
  "Calculate the remaining oven time in minutes"
  (- (expected-time-in-oven) actual-minutes))

(defun preparation-time-in-minutes(number-of-layers)
  "Calculate the elapsed time in minutes"
  (* number-of-layers 19))

(defun elapsed-time-in-minutes(number-of-layers actual-minutes)
  "Calculate the elapsed time in minutes"
  (+ actual-minutes (preparation-time-in-minutes number-of-layers)))
