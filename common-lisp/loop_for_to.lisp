(loop for i to 10 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upto 10 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i below 10 do
      (format T "i = ~d~%" i))

(princ "===========================")
(terpri)

(loop for i below 10 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i below 10 when (oddp i) do
      (format T "i = ~d~%" i))
