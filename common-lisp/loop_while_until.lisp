(defvar i 10)

(loop while (> i 0) do
      (format T "i = ~d~%" i)
      (setq i (- i 1)))

(princ "rebound")
(terpri)

(loop until (> i 10) do
      (format T "i = ~d~%" i)
      (setq i (+ i 1)))
