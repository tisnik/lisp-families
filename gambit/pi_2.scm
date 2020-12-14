(declare
  (block)
  (not safe))

(define (compute-pi n)
  (let ((pi 4.0))
    (do ((i 3 (+ i 2)))
      ((> i (+ n 2)))
      (set! pi (* pi (/ (- i 1) i) (/ (+ i 1) i))))
    pi))
 
(do ((n 1 (* n 2)))
  ((> n 10000000))
  (display n)
  (display " ")
  (display (compute-pi n))
  (newline))