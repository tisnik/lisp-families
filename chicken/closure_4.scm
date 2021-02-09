; Examples prepared for Chicken Scheme

;
;  (C) Copyright 2020, 2021  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(use srfi-1)

; helper function to print a value with newline appended
(define (print item)
     (display item)
     (newline))

; closure construction
(define (get-counter)
    (let ((i -1))
         ; function with value closed over
         (lambda ()
             (set! i (+ i 1))
             i)))

; construct two closures
(define counter1 (get-counter))
(define counter2 (get-counter))

; usage of closures
(print (counter1))
(print (counter1))
(print (counter1))

(print (counter2))
(print (counter2))
(print (counter2))

(print (counter1))
(print (counter1))
(print (counter1))
