(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defconstant earth-seconds 31557600)

(defun on-mercury (n)
  "Returns number of Mercury years for a given number of seconds."
  (/ n earth-seconds 0.2408467)
  )

(defun on-venus (n)
  "Returns number of Venus years for a given number of seconds."
  (/ n earth-seconds 0.61519726)
  )

(defun on-earth (n)
  "Returns number of Earth years for a given number of seconds."
  (/ n earth-seconds 1.0)
  )

(defun on-mars (n)
  "Returns number of Mars years for a given number of seconds."
  (/ n earth-seconds 1.8808158)
  )

(defun on-jupiter (n)
  "Returns number of Jupiter years for a given number of seconds."
  (/ n earth-seconds 11.862615)
  )

(defun on-saturn (n)
  "Returns number of Saturn years for a given number of seconds."
  (/ n earth-seconds 29.447498)
  )

(defun on-uranus (n)
  "Returns number of Uranus years for a given number of seconds."
  (/ n earth-seconds 84.016846)
  )

(defun on-neptune (n)
  "Returns number of Neptune years for a given number of seconds."
  (/ n earth-seconds 164.79132)
  )
