(define (print item)
     (display item)
     (newline))

(define x 1)
(define y 2)

(define (add x y)
    (+ x y))

(print (add x y))
(set! x 10)
(print (add x y))
