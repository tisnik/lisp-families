(defun drop (n list)
  (nthcdr n list))


(print (drop 0 '(1 2 3 4 5 6 7 8 9 10)))
(print (drop 3 '(1 2 3 4 5 6 7 8 9 10)))
(print (drop 30 '(1 2 3 4 5 6 7 8 9 10)))

(quit)
