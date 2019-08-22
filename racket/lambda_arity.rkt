#lang racket/base

(define inc
  (case-lambda
    [() 0]
    [(x) (+ x 1)]
    [(x delta) (+ x delta)]))

(display (inc))
(newline)

(display (inc 10))
(newline)

(display (inc 10 -1))
(newline)
