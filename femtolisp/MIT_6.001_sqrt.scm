; A classic example taken from MIT 6.001 course

; helper function to print a value with newline appended
(define (print item)
     (princ item)
     (newline)
     "")


; Wizard's version
(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       0.01))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve quess))))
  (try 1))


(print (sqrt 100))
(print (sqrt 2))
