(define (print item)
     (princ item)
     (newline))

(define (sgn n)
  (cond
        ((not (number? n)) 'not-a-number)
        ((< n 0)      'negative)
        ((> n 0)      'positive)
        ((zero? n)    'zero)))

(print (sgn -10))
(print (sgn 0))
(print (sgn 10))

(print (sgn '()))
