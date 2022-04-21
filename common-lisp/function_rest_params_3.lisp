(defun show-values (&rest values)
  (dolist (value values)
    (print value))
  (terpri))


(show-values)
(show-values 1)
(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
(show-values 1 2 3 4 5)
