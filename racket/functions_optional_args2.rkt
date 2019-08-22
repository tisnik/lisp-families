#lang racket/base

(define (transform x [scale 1] [offset 0])
    (+ offset (* x scale)))

(display (transform 10))
(newline)

(display (transform 10 20))
(newline)

(display (transform 10 20 -50))
(newline)
