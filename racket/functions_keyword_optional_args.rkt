#lang racket/base

(define (transform x #:scale [scale 1] #:offset [offset 0])
    (+ offset (* x scale)))

(display (transform 10 #:offset 0 #:scale 1))
(newline)

(display (transform 10))
(newline)

(display (transform 10 #:offset -10))
(newline)

(display (transform 10 #:offset -100 #:scale 1))
(newline)

(display (transform 10 #:offset -100 #:scale 100))
(newline)
