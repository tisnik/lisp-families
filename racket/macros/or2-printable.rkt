#lang racket/base

(define-syntax or
  (syntax-rules ()
    [(or) #f]
    [(or x) x]
    [(or x y) (let ([z x])
                   (if z z y))]
    [(or x y ...) (or x (or y ...))]))

(display (syntax->datum (expand-once '(or))))
(display (syntax->datum (expand-once '(or #f))))
(display (syntax->datum (expand-once '(or #t))))
(display (syntax->datum (expand-once '(or #f #f))))
(display (syntax->datum (expand-once '(or #f #t))))
(display (syntax->datum (expand-once '(or #f #f #f))))
(display (syntax->datum (expand-once '(or #f #f #t))))
(display (syntax->datum (expand-once '(or #f #f #f #f #f))))
(display (syntax->datum (expand-once '(or #f #f #t #f #t))))
