(define (print item)
     (princ item)
     (newline))

(print (cons 1 2))

(print (cons 1 (cons 2 3)))

(print '((1 . 2) . (3 . 4)))

; this is proper list
(print (cons 1 (cons 2 (cons 3 '()))))

; be compatible with LISP
(define nil '())

; this is proper list
(print (cons 1 (cons 2 (cons 3 nil))))

; this is proper list
(print (cons 1 '(2 3 4)))

; this is also proper list
(print (cons 1 (cons 2 (cons 3 (cons 4 nil)))))

; this is NOT proper list
(print (cons 1 (cons 2 (cons 3 4))))
