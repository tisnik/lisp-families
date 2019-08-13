(define (test-negate)
  (display "test-negate")
  (display (negate 0))
  (display (negate 1))
  (display (negate -1))
  (display (negate "foobar"))
  (display "done"))

(test-negate)
