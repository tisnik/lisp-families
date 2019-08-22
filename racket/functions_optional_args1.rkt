#lang racket/base

(define (inc x [delta 1])
    (+ x delta))

(display (inc 10))
(newline)

(display (inc 10 20))
(newline)
