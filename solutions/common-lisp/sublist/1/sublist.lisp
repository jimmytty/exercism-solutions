(defpackage :sublist
  (:use :cl)
  (:export :sublist))

(in-package :sublist)

(defun sublist (list1 list2)
  "what is list1 of list2 (sublist, superlist, equal or unequal)"
  (let ((answer nil))
    (cond
      ((and (eq 0 (length list1)) (eq 0 (length list2)))
       (setq answer :equal))
      ((and
        (eq (length list1) (length list2))
        (equal
         (format nil ",~{~A~^,~}," list1) (format nil ",~{~A~^,~}," list2)))
       (setq answer :equal))
      ((or
        (and (= (length list1) 0)
             (> (length list2) 0))
        (and (< (length list1) (length list2))
             (search
              (format nil ",~{~A~^,~}," list1)
              (format nil ",~{~A~^,~}," list2))))
       (setq answer :sublist))
      ((or
        (and (= (length list2) 0)
             (> (length list1) 0))
        (and (< (length list2) (length list1))
             (search
              (format nil ",~{~A~^,~}," list2)
              (format nil ",~{~A~^,~}," list1))))
       (setq answer :superlist))
      (t (setq answer :unequal)))))
