; Examples prepared for Femtolisp

;
;  (C) Copyright 2020, 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; helper function to print a value with newline appended
(define (print item)
     (princ item)
     (newline)
     "")

(define x 1)
(define y 2)

(define (add x y)
    (+ x y))

(print (add x y))

(print
    (let ((x 10) 
          (y 20)) 
          (add x y)))


(set! x 10)
(print (add x y))

(print
    (let ((x 10) 
          (y 20)) 
          (add x y)))

(print
    (let ((x 100))
          (add x y)))

