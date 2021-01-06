; Examples prepared for Femtolisp

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

(define (print item)
     (princ item)
     (newline))

(define (get-counter)
    (let ((i -1))
         (lambda ()
             (set! i (+ i 1))
             i)))

(define counter1 (get-counter))
(define counter2 (get-counter))

(print "Counter 1")
(print (counter1))
(print (counter1))
(print (counter1))
(newline)

(print "Counter 2")
(print (counter2))
(print (counter2))
(print (counter2))
(newline)

(print "Counter 1")
(print (counter1))
(print (counter1))
(print (counter1))
(newline)

(print "Counter 2")
(print (counter2))
(print (counter2))
(print (counter2))
(newline)
