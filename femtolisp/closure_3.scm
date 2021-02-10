; Examples prepared for Femtolisp

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

; helper function to print a value with newline appended
(define (print item)
     (princ item)
     (newline))

; closure construction
(define (larger-than limit)
    ; function with value closed over
    (lambda (value) (> value limit)))

; construct and use closure
(print ((larger-than 5) 0))
(print ((larger-than 5) 10))

; another usage of closure
(print (filter (larger-than 5) '(1 2 3 4 5 6 7 8 9 10)))
