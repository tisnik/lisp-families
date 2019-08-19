#lang racket/base

(define (print item)
     (display item)
     (newline))

(define (factorial n)
    (let fact-iter (          ; pomocná vnitřní funkce
                  (n n)       ; počitadlo iterací
                  (result 1)) ; průběžný výsledek
        (if (= n 0)           ; po dosažení koncového stavu
            result            ; se vrátí průběžný výsledek
            (fact-iter (- n 1) (* n result)) ; koncové volání
        )))

(define n 0)

(do ()
  ((>= n 30))
  (print (factorial n))
  (set! n (+ n 1)))
