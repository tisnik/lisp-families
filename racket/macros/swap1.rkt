(define-syntax-rule (swap x y)
    (let ([tmp x])
         (set! x y)
         (set! y tmp)))

(let [(x 10)
      (y 20)]
     (swap x y)
     (display x)
     (newline)
     (display y)
     (newline))
