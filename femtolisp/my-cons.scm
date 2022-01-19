; A classic example taken from MIT 6.001 course

(define (cons- x y)
  (lambda (m)
    (if (= m 0) x y)))

(define (car- z) (z 0))
(define (cdr- z) (z 1))

(princ (cons- 1 2))
(newline)

(princ (car- (cons- 1 2)))
(newline)

(princ (cdr- (cons- 1 2)))
(newline)

