(define (print item)
     (display item)
     (newline))

(define (get-counter)
    (let ((i -1))
         (lambda ()
             (set! i (+ i 1))
             i)))

(define counter1 (get-counter))
(define counter2 (get-counter))

(print (counter1))
(print (counter1))
(print (counter1))

(print (counter2))
(print (counter2))
(print (counter2))

(print (counter1))
(print (counter1))
(print (counter1))

