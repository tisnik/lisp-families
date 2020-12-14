(define (print item)
     (princ item)
     (newline))

(print "Empty list")
(print '())
(newline)

(print "A list")
(print '(1 2 3 4))
(newline)

(print "Another list")
(print (list 1 2 3 4))
(newline)

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(print "car")
(print (car a))
(newline)

; get the rest of a list
(print "cdr")
(print (cdr a))
(newline)

; combination of car+cdr
(print "cadr")
(print (cadr a))
(newline)

; combination of cdr+cdr
(print "cddr")
(print (cddr a))
(newline)
