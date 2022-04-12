(defvar lst '(1 2 3 4 5 6 7 8 9 10))

(print
    (loop for i in lst by #'cddr
          collect i))

(print
    (loop for i in lst by #'cddr
          collect (* i i)))


(defun factorial (n)
    (cond ((zerop n) 1)
          (T (* n (factorial (- n 1))))))

(print
    (loop for i in lst by #'cddr
          collect (factorial i)))
