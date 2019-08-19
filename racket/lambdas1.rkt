#lang racket/base

(display (lambda (x) (* x x)))
(newline)

(display ((lambda (x) (* x x)) 42))
(newline)

(display ((lambda (a b c) (+ a b c)) 1 2 3))
(newline)
