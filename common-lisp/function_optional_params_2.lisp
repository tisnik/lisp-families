(defun show-values (a b &optional (c -1) (d "nic"))
  (print c)
  (print d)
  (print (list a b c d))
  (terpri))


(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
