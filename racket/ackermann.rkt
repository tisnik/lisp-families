#lang racket/base

(define (A m n)
  (cond
    ((= m 0) (+ n 1))
    ((= n 0) (A (- m 1) 1))
    (else (A (- m 1) (A m (- n 1))))))

(define m 0)
(define n 0)

(do ()
  ((>= m 4))
  (set! n 0)
  (do ()
    ((>= n 5))
    (display (A m n))
    (display "\t")
    (set! n (+ n 1)))
  (newline)
  (set! m (+ m 1)))

(newline)
(display (A 5 0))
