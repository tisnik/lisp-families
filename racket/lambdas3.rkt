#lang racket/base

(define (print item)
  (display item)
  (newline))

(print ((lambda x x) 1 2 3 4))
(print ((lambda x (apply + x)) 1 2 3 4))
(print ((lambda x (length x)) 'a 'b 'c 'd))

(print ((lambda (a . b) b) 1 2 3 4))
(print ((lambda (a b . c) c) 1 2 3 4))
(print ((lambda (a b c . d) d) 1 2 3 4))
(print ((lambda (a b c d . e) e) 1 2 3 4))
