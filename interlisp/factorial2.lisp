(defineq (factorial2 (lambda (n)
    (cond ((zerop n) 1)
          (T (* n (factorial2 (- n 1]

(print (factorial2 20))
