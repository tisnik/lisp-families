(defun take (n list)
  (if (>= n (length list))
      list
      (subseq list 0 n)))


(print (take 0 '(1 2 3 4 5 6 7 8 9 10)))
(print (take 3 '(1 2 3 4 5 6 7 8 9 10)))
(print (take 30 '(1 2 3 4 5 6 7 8 9 10)))

(quit)
