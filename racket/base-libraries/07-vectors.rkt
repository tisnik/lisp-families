#lang racket/base

(println (vector 1 2 3 4))

; create vector and assign it to symbol
; (=variable)
(define a (vector 1 2 3 4))

; vector length
(println (vector-length a))

; get the first item
(println (vector-ref a 0))

; get the last item
(println (vector-ref a 3))

; uptate the first item
(vector-set! a 0 -1)
(println a)

; uptate the last item
(vector-set! a 3 -1)
(println a)
