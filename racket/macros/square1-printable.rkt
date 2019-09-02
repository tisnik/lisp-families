(define-syntax-rule (square x)
    (* x x))

(display (square 10))
(newline)

(display (syntax->datum (expand-once (square 10))))
(newline)

(display (syntax->datum (expand-once '(square 10))))
(newline)

(display (syntax->datum (expand-once '(square 10))))
(newline)

(display (syntax->datum (expand '(square 10))))
(newline)

(display (syntax->datum (expand-once '(square (+ 1 2)))))
(newline)
