#lang racket/base

(println (cons 1 2))

(println (cons 1 (cons 2 3)))

(println '((1 . 2) . (3 . 4)))

; this is proper list
(println (cons 1 (cons 2 (cons 3 '()))))

(define nil '())

; this is proper list
(println (cons 1 (cons 2 (cons 3 nil))))
