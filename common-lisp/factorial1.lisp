(defun factorial (n)
    (cond ((zerop n) 1)
          (T (* n (factorial (- n 1))))))

(print (factorial 10))
