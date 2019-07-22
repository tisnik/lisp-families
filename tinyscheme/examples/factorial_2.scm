(define (factorial n)
  (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
    1       ; faktoriál nuly je definitoricky roven jedné
    (* n (factorial (- n 1)))))


(define n 0)

(do ()
  ((>= n 30))
  (display (factorial n))
  (newline)
  (set! n (+ n 1)))
