#lang racket/base

(define inc
  (lambda (x [delta 1])
    (+ x delta)))

(display (inc 10))
(newline)

(display (inc 10 20))
(newline)

(display ((lambda (x [delta 1]) (+ x delta)) 10))
(newline)

(display ((lambda (x [delta 1]) (+ x delta)) 10 20))
(newline)
