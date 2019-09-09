#lang racket/base

(require racket/flonum)

(define (print item)
     (display item)
     (newline))

(define (factorial n)
    (let fact-iter (              ; pomocná vnitřní funkce
                  (n n)           ; počitadlo iterací
                  (result 1.0))   ; průběžný výsledek
        (if (fl= n 0.0)           ; po dosažení koncového stavu
            result                ; se vrátí průběžný výsledek
            (fact-iter (fl- n 1.0) (fl* n result)) ; koncové volání
        )))

(define n 0.0)

(do ()
  ((>= n 30.0))
  (print (factorial n))
  (set! n (+ n 1)))
