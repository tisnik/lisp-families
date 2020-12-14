(define (print item)
  (display item)
  (newline))

(define (safe-div x y)
  (with-exception-catcher
    (lambda (error) #f)
    (lambda () (/ x y))))

(print (safe-div 10 3))
(print (safe-div 10 0))
