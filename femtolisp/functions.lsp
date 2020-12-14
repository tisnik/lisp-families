(define (print item)
     (princ item)
     (newline))

; anonymous function
(lambda (x y) (+ x y))

; anonymous function is a value
(print (lambda (x y) (+ x y)))

; apply anonymous function
(print
  (
    ; create anonymous function
    (lambda (x y) (+ x y))
    ; pass parameters to it
    1 2))

; apply anonymous function (one liner)
(print ((lambda (x y) (+ x y)) 1 2))

; one-liner function
(define (add x y) (+ x y))

; function written on more lines
(define (mul x y)
  (* x y))

; function written on more lines using lambda
(define div (lambda (x y)
  (* x y)))

; test functions
(print (add 1 2))
(print (mul 6 7))
(print (div 10 3))