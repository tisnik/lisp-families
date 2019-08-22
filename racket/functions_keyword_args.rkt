#lang racket/base

(define (transform x #:scale scale #:offset offset)
    (+ offset (* x scale)))

(display (transform 10 #:offset 0 #:scale 1))
(newline)

(display (transform 10 #:offset -100 #:scale 1))
(newline)

(display (transform 10 #:offset -100 #:scale 100))
(newline)
