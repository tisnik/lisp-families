(defun show-values (&key a b c d)
  (print (list a b c d)))


(show-values :a 1 :b 2 :c 3 :d 4)
(show-values :b 1 :a 2 :d 3 :c 4)
(show-values :d 1 :c 2 :b 3 :a 4)
