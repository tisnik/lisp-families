(defun factorial (n)
    (cond ((zerop n) default)
          (T (* n (factorial (- n 1))))))
