(define (print-pair pair)
  (begin
      (display pair)
      (newline)
      (display (* (car pair) (cdr pair)))
      (newline)))
