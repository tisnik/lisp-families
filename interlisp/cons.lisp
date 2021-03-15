; cons usage
(print (cons 1 2))

; another cons usage
(print (cons 1 (cons 2 3)))

; dot-pairs
(print '((1 . 2) . (3 . 4)))

; this is proper list
(print (cons 1 (cons 2 (cons 3 '()))))

; this is proper list
(print (cons 1 (cons 2 (cons 3 nil))))

; this is proper list
(print (cons 1 '(2 3 4)))

; this is also proper list
(print (cons 1 (cons 2 (cons 3 (cons 4 nil)))))

; this is NOT proper list
(print (cons 1 (cons 2 (cons 3 4))))
