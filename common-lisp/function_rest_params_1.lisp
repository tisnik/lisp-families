(defun show-values (a b &rest values)
  (print values)
  (print (list a b values))
  (terpri))


(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
