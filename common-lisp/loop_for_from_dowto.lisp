(loop for i from 10 downto 1 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 10 above 1 do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i downfrom 10 above 1 by 2 do
      (format T "i = ~d~%" i))

(princ "===========================")
(terpri)

(loop for i from 10 downto 1 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i from 10 above 1 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i downfrom 10 above 1 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i downfrom 10 above 1 by 2 when (evenp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)

(loop for i downfrom 10 above 1 by 2 when (oddp i) do
      (format T "i = ~d~%" i))

(princ "---------------------------")
(terpri)
