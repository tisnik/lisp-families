#lang racket/base

(define (print item)
     (display item)
     (newline))

(define (factorial n)
    (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
        1       ; faktoriál nuly je definitoricky roven jedné
        (* n (factorial (- n 1)))
    )
)

(define n 0)

(do ()
  ((>= n 30))
  (print (factorial n))
  (set! n (+ n 1)))
