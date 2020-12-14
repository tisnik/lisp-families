(define (print item)
  (display item)
  (newline))

(define c1 #f)

(define (test-cc)
  (let ((i 0))
    (call/cc (lambda (k) (set! c1 k)))
    (set! i (+ i 1))
    i))
