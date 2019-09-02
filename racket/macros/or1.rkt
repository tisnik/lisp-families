(define-syntax or
  (syntax-rules ()
    [(or) #f]
    [(or x) x]
    [(or x y) (let ([z x])
                   (if z z y))]))

(display (or))
(display (or #f))
(display (or #t))
(display (or #f #f))
(display (or #f #t))
