; A classic example taken from MIT 6.001 course

(define (plus x y)
  (if (= x 0)
      y
      (plus (- x 1) (+ y 1))))

(princ (plus 10000000 10000000))
(newline)
