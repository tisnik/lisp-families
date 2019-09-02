(define-syntax-rule (swap x y)
    (let ([tmp x])
         (set! x y)
         (set! y tmp)))

(define x 10)
(define y 20)

(swap x y)

(display x)
(newline)
(display y)
(newline)
