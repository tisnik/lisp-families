(loop for i from 0 to 30 by 3 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 0 upto 30 by 3 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 0 upto 30 by 3 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 0 below 30 by 3 do
      (format T "i = ~d~%" i))

(princ "===========================")
(terpri)

(loop for i from 0 to 30 by 3 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 0 upto 30 by 3 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 0 upto 30 by 3 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i upfrom 0 below 30 by 3 when (evenp i) do
      (format T "i = ~d~%" i))
