(defun show-values (a b &optional c d &key e f)
  (print (list a b c d e f)))


(show-values 1 2)
(show-values 1 2 3)
(show-values 1 2 3 4)
(show-values 1 2 :e 100)
(show-values 1 2 :e 100 :f 200)
(show-values 1 2 3 4 :e 100)
(show-values 1 2 3 4 :f 200)
(show-values 1 2 3 4 :e 100 :f 200)
