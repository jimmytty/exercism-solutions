(defun new-list () '())

(defun list-of-things (thing1 thing2 thing3) (list thing1 thing2 thing3))

(defun add-to-list (item list) (append (list item) list))

(defun first-thing (list) (first list))

(defun second-thing (list) (second list))

(defun third-thing (list) (third list))

(defun twenty-third-thing (list) (nth 22 list))

(defun remove-first-item (list) (delete (first list) list))

(defun list-append (list1 list2) (append list1 list2))

(defun just-how-long (list) (list-length list))
