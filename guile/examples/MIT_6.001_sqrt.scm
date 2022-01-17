; A classic example taken from MIT 6.001 course

; helper function to print a value with newline appended
(define (print item)
     (display item)
     (newline)
     "")


; helper functions
(define (square x)
  (* x x))


(define (average x y)
  (/ (+ x y) 2.))


; Wizard's version
(define (sqrt-of x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x))
       0.001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1))


(print (sqrt-of 100))
(print (sqrt-of 2))
