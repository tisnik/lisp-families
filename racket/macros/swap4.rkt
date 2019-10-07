#lang racket/base

(define-syntax-rule (swap x y)
    (let ([tmp x])
         (set! x y)
         (set! y tmp)))

(let [(tmp 10)
      (set! 20)]
     (swap tmp set!)
     (display tmp)
     (newline)
     (display set!)
     (newline))
