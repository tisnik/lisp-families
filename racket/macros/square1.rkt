(define-syntax-rule (square x)
    (* x x))

(display (square 10))
(newline)

(display (expand-once (square 10)))
(newline)

(display (expand-once '(square 10)))
(newline)

(display (expand-once '(square 10)))
(newline)

(display (expand '(square 10)))
(newline)

(display (expand-once '(square (+ 1 2))))
(newline)
