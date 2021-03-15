(de factorial3 (n)
    (cond ((zerop n) 1)
          (T (* n (factorial3 (- n 1))))))

(print (factorial3 20))
