(define (print item)
     (princ item)
     (newline))

(define x 1)
(define y 2)

(define (add x y)
    (+ x y))

(print (+ x y))
(print (add x y))
