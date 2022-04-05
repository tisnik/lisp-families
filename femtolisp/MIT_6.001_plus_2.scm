; A classic example taken from MIT 6.001 course
; https://github.com/JeffBezanson/femtolisp

; Updated for Femtolisp
; https://github.com/JeffBezanson/femtolisp

(define (plus x y)
  (if (= x 0)
      y
      (+ 1 (plus (- x 1) y))))

(princ (plus 10000000 10000000))
(newline)
