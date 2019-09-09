#lang racket/base

(println '(1 . 2))

(println '(1 . ((2 . 3) . 4)))

(println '((1 . 2) . (3 . 4)))

; this is not the proper list
(println '(1 . (2 . (3 . '()))))

; this is the proper list
(println '(1 . (2 . (3 . ()))))

(define nil '())
; this is the proper list
(println '(1 . (2 . (3 . nil))))
