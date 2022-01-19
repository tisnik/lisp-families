; A classic example taken from MIT 6.001 course

(define (plus x y)
  (if (= x 0)
      y
      (+ 1 (plus (- x 1) y))))

(princ (plus 10000000 10000000))
(newline)
