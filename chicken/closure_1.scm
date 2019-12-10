(use srfi-1)

(define (print item)
     (display item)
     (newline))

(define (larger-than limit)
    (lambda (value) (> value limit)))

(print ((larger-than 5) 0))
(print ((larger-than 5) 10))

(print (filter (larger-than 5) '(1 2 3 4 5 6 7 8 9 10)))
