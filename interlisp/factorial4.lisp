(de factorial4 (n)
    (cond ((zerop n) 1)
          (T (* n (factorial4 (- n 1]

(print (factorial4 30))
