(define (print item)
     (display item)
     (newline))

(make-quantity 10 "cm")
(print 10cm)

(define-base-unit meter "distance")
(define-unit stadion 176meter)

(print 100stadion)
(print (* 2stadion 3))

(print (* 10cm 2))
(print (* 10cm 10))
(print (* 10cm 10cm))

(print (/ 10s 5cm))
(print (/ 10cm 5s))

(define-base-unit A "electric current")
(define-base-unit V "voltage")

(print (* 3A 5V))

(define power (* 3A 5V))
(define resistance (/ 5V 3A))

(print power)
(print resistance)

(define wrong-power (* 3A 5cm))
(print wrong-power)
