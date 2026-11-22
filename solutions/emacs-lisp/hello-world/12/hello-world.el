(defun hello ()
  (let* ((octals '(#o110 #o145 #o154 #o154 #o157 #o54
                         #o40 #o127 #o157 #o162 #o154 #o144 #o41))
         (msg (make-string (length octals) 0))
         (i -1))
    (dolist (oct octals)
      (setf (elt msg (incf i)) oct))
    msg))

(provide 'hello-world)
