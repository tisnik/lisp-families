#lang racket/base

(define-syntax-rule (square x)
    (let ([tmp x])
         (* tmp tmp)))

(display (square 10))
(newline)

(display (expand-once (square 10)))
(newline)

(display (expand-once '(square 10)))
(newline)

(display (expand-once '(square 10)))
(newline)

(display (expand '(square 10)))
(newline)

(display (expand-once '(square (+ 1 2))))
(newline)
