;
;  (C) Copyright 2020  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(define (compute-pi n)
  (let ((pi 4.0))
    (do ((i 3 (+ i 2)))
      ((> i (+ n 2)))
      (set! pi (* pi (/ (- i 1) i) (/ (+ i 1) i))))
    pi))
 
(define (pi-for n)
  (let ((pi (compute-pi n)))
    (display n)
    (display "\t")
    (display pi)
    (newline)))

(define (power-of-two n maximum)
  (if (< n maximum)
      (cons n (power-of-two (* n 2) maximum))
      (list n)))

;(define t (make-thread (lambda () (pi-for 10))))
;(display t)

(define threads (map (lambda (n) (make-thread (lambda () (pi-for n))))
                     (power-of-two 1 5000000)))

(for-each thread-start! threads)
(for-each thread-join!  threads)
