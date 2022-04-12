(defvar i 10)

(loop while (> i 0) do
      (format T "i = ~d~%" i)
      (setq i (- i 1)))

(loop until (> i 10) do
      (format T "i = ~d~%" i)
      (setq i (+ i 1)))
