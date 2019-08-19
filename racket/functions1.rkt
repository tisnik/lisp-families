#lang racket/base

(define (nothing)
  0)

(display (nothing))
(newline)

(define (square x) (* x x))

(display (square 42))
(newline)

(display (square (+ 1 2)))
(newline)

(display (+ (square 3) (square 4)))
(newline)
