(define (print item)
     (display item)
     (newline))

(define counter
    (let ((i -1))
         (lambda ()
             (set! i (+ i 1))
             i)))

(print (counter))
(print (counter))
(print (counter))
