(define (print item)
  (display item)
  (newline))

(define (factorial n)
  (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
      (/ n 0) ; chyba ve výpočtu!!!
      (* n (factorial (- n 1)))
      )
  )

;(print (factorial 10))
