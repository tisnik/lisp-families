(loop for i from 1 to 10 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 1 upto 10 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 1 upto 10 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 1 below 10 do
      (format T "i = ~d~%" i))

(princ "===========================")
(terpri)

(loop for i from 1 to 10 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 1 upto 10 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 1 upto 10 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 1 below 10 when (evenp i) do
      (format T "i = ~d~%" i))
