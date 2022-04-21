(defun show-values (a b &rest values)
  (let ((l (append (list a b) values)))
  (print values)
  (print l)
  (terpri)))


(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
