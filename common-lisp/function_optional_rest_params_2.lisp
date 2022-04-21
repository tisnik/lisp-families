(defun show-values (a b &optional (c -1) (d "nic") &rest values)
  (print c)
  (print d)
  (print values)
  (print (list a b c d values))
  (terpri))


(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
(show-values 1 2 3 4 5)
(show-values 1 2 3 4 5 6)
