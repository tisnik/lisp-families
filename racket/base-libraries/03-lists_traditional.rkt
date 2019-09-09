#lang racket/base

(println '(1 2 3 4))

(println (list 1 2 3 4))

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(println (car a))

; get the rest of a list
(println (cdr a))

; combination of car+cdr
(println (cadr a))

; combination of cdr+cdr
(println (cddr a))
