#lang racket/base

(define (print item)
     (display item)
     (newline))

; funkce vracející počet skutečně předaných parametrů
(define foo (lambda parametry (length parametry)))

(print (foo))
(print (foo 1))
(print (foo 1 2))
(print (foo "bar" "baz"))
(print (foo '(1 2 3 4)))
