(define (print item)
  (display item)
  (newline))

(define b (list 1 2 3))

(print "quote:")
(print '(a b c))
(print '(a ,b c))
(print '(a ,@b c))
(newline)

(print "quasiquote:")
(print `(a b c))
(print `(a ,b c))
(print `(a ,@b c))
(newline)
