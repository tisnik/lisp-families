(define (print item)
     (princ item)
     (newline))

(define counter
    (let ((i -1))
         (lambda ()
             (set! i (+ i 1))
             i)))

(print "Counter")
(print (counter))
(print (counter))
(print (counter))
