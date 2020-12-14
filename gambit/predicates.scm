(define (print item)
  (display item)
  (newline))

(define nil '())

(print "pair?")
(print (pair? nil))
(print (pair? #t))
(print (pair? 42))
(print (pair? "string"))
(print (pair? '(1 2 3)))
(newline)

(print "list?")
(print (list? nil))
(print (list? #t))
(print (list? 42))
(print (list? "string"))
(print (list? '(1 2 3)))
(newline)

(print "null?")
(print (null? nil))
(print (null? #t))
(print (null? 42))
(print (null? "string"))
(print (null? '(1 2 3)))
(newline)

(print "zero?")
(print (zero? 0))
(print (zero? 42))
(newline)