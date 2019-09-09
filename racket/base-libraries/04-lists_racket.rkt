#lang racket/base

(require racket/list)

(println '(1 2 3 4))

(println (list 1 2 3 4))

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(println (first a))

; get the rest of a list
(println (rest a))

; combination of first+rest
(println (first (rest a)))

; combination of rest+rest
(println (rest (rest a)))
