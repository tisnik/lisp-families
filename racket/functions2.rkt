#lang racket/base

(define (quadratic a b c x) (+ (* a x x) (* b x) c))

(display (quadratic 1 0 0 1))
(newline)

(display (quadratic 2 2 2 4))
(newline)
