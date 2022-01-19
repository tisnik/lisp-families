(use-modules (system vm vm))

; A classic example taken from MIT 6.001 course

(define (plus x y)
  (if (= x 0)
      y
      (+ 1 (plus (- x 1) y))))

(define (test)
  (display (plus 10000000 10000000)))

(define (handler)
  (display "Stack overflow\n"))

(call-with-stack-overflow-handler 1000 test handler)
