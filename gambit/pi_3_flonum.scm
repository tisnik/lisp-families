(declare
  (mostly-flonum)
  (block)
  (not safe))

(define (compute-pi n)
  (let ((pi 4.0))
    (do ((i 3.0 (fl+ i 2.0)))
      ((fl> i (fl+ n 2.0)))
      (set! pi (fl* pi (fl/ (fl- i 1.0) i) (fl/ (fl+ i 1.0) i))))
    pi))
 
(do ((n 1.0 (* n 2)))
  ((> n 10000000))
  (display n)
  (display " ")
  (display (compute-pi n))
  (newline))
