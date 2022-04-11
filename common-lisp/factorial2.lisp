(defun factorial (n)
    (cond ((zerop n) 1)
          (T (* n (factorial (- n 1))))))

(defun print-factorials ()
  (loop for n from 1 to 20
	do (print (factorial n))))
