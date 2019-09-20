#lang racket/base

(define-syntax or
  (syntax-rules ()
    [(or) #f]
    [(or x) x]
    [(or x y) (let ([z x])
                   (if z z y))]))

(display (syntax->datum (expand-once '(or))))
(display (syntax->datum (expand-once '(or #f))))
(display (syntax->datum (expand-once '(or #t))))
(display (syntax->datum (expand-once '(or #f #f))))
(display (syntax->datum (expand-once '(or #f #t))))
