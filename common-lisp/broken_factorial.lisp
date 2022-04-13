(defun factorial (n)
  (if (minusp n) (cerror "continue with negative value?" "negative value ~s" n))
  (* n (factorial (- n 1))))
