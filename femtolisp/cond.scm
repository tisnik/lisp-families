(define (print item)
     (princ item)
     (newline))

(define (sgn n)
  (cond
        ((< n 0)      'negative)
        ((> n 0)      'positive)
        ((zero? n)    'zero)))

(print "sgn")
(print (sgn -10))
(print (sgn 0))
(print (sgn 10))
(newline)


(define (sgn-2 n)
  (cond
        ((< n 0)      'negative)
        ((> n 0)      'positive)
        (#t           'zero)))

(print "sgn-2")
(print (sgn-2 -10))
(print (sgn-2 0))
(print (sgn-2 10))
(newline)
