;
;  (C) Copyright 2020, 2021, 2022  Pavel Tisnovsky
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
     (display item)
     (newline))

; counter implemented as closure
(define counter
    (let ((i -1))
         (lambda ()
             (set! i (+ i 1))
             i)))

; use counter several times
(print (counter))
(print (counter))
(print (counter))
