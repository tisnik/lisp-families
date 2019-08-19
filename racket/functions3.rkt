#lang racket/base

(define (>= x y)
  (or (> x y) (= x y)))

(display (>= 10 2))
(newline)

(display (>= 2 10))
(newline)
