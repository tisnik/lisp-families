(defvar lst '(1 2 3 4 5 6 7 8 9 10))

(defvar result
        (loop for i in lst
              count i into counter
              sum i into total
              maximize i into max-value
              minimize i into min-value
              finally (return (list min-value max-value total counter))))

(format T "Min value ~d~%" (nth 0 result))
(format T "Max value ~d~%" (nth 1 result))
(format T "Sum value ~d~%" (nth 2 result))
(format T "Values ~d~%" (nth 3 result))
