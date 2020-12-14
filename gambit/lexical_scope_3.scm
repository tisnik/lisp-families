(define (print item)
  (display item)
  (newline))

(define x 1)
(define y 2)

(define (add x y)
  ; rozsah (scope) je lokální!
  (set! x (+ x y))
  x)

(print (add x y))
(print (add x y))

(set! x 10)
(print (add x y))
(print (add x y))
