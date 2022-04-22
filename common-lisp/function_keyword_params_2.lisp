(defun show-values (&key a b c d)
  (print (list a b c d)))


(show-values)
(show-values :a 1)
(show-values :b 2)
(show-values :a 1 :b 2)
(show-values :c 3 :d 4)
