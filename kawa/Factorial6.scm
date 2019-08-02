(define (factorial n :: int) :: int
  (let fact-iter (                     ; pomocná vnitřní funkce
              (n :: int n )            ; počitadlo iterací
              (result :: int 1))       ; průběžný výsledek
    (if (= n 0)                        ; po dosažení koncového stavu
      result                           ; se vrátí průběžný výsledek
      (fact-iter (- n 1) (* n result)) ; koncové volání
    )))


(define n :: int 0)

(do ()
  ((>= n 30))
  (display (factorial n))
  (newline)
  (set! n (+ n 1)))
