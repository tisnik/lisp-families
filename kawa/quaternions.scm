(define (print item)
     (display item)
     (newline))

(print 1+2i+3j+4k)

(print (make-rectangular 1 2 3 4))
(print (make-rectangular 1 0 0 0))

(define one 1+0i+0j+0k)
(print (* one one))

(define imag 0+1i+0j+0k)
(print (* imag imag))

(define other 0+1i+2j+3k)
(print (* other other))
(print (* other imag))

(print (/ imag other))
(print (magnitude imag))
(print (magnitude other))

(print (angle 1))
(print (angle imag))
(print (angle other))
