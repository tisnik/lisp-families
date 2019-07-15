(define (print item)
     (display item)
     (newline))

(print '(1 2 3 4))

(print (list 1 2 3 4))

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(print (car a))

; get the rest of a list
(print (cdr a))

; combination of car+cdr
(print (cadr a))

; combination of cdr+cdr
(print (cddr a))
