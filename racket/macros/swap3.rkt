(define-syntax-rule (swap x y)
    (let ([tmp x])
         (set! x y)
         (set! y tmp)))

(let [(tmp 10)
      (baz 20)]
     (swap tmp baz)
     (display tmp)
     (newline)
     (display baz)
     (newline))
