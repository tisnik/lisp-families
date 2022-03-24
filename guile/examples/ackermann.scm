; Examples for Guile 2.x

;
;  (C) Copyright 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; Ackermann function
(define (A m n)
  (cond
    ((= m 0) (+ n 1))
    ((= n 0) (A (- m 1) 1))
    (else (A (- m 1) (A m (- n 1))))))

; counters
(define m 0)
(define n 0)

; compute Ackermann function for given input values pairs
(do ()
  ((>= m 4))
  (set! n 0)
  (do ()
    ((>= n 5))
    (display (A m n))
    (display "\t")
    (set! n (+ n 1)))
  (newline)
  (set! m (+ m 1)))

(newline)
(display (A 5 0))
