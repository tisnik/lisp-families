(defvar lst '(1 2 3 4 5 6 7 8 9 10))

(defvar result
    (loop for i in lst
          sum i))

(format T "Result: ~d~%" result)

(princ "----------------------------")
(terpri)

(setq result
    (loop for i in lst
          sum i into total
          finally (return total)))

(format T "Result: ~d~%" result)
