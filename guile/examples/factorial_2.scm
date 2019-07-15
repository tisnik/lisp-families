(define (print item)
     (display item)
     (newline))

(define (factorial n)
    (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
        1       ; faktoriál nuly je definitoricky roven jedné
        (* n (factorial (- n 1)))))
