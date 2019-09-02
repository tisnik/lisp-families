(define-syntax or
  (syntax-rules ()
    [(or) #f]
    [(or x) x]
    [(or x y) (let ([z x])
                   (if z z y))]
    [(or x y ...) (or x (or y ...))]))

(display (or))
(display (or #f))
(display (or #t))
(display (or #f #f))
(display (or #f #t))
(display (or #f #f #f))
(display (or #f #f #t))
(display (or #f #f #f #f #f))
(display (or #f #f #t #f #t))
