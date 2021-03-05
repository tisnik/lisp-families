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

; import and use SRFI 1 (list library) procedures
(use srfi-1)

; helper function to print a value with newline appended
(define (print item)
  (display item)
  (newline))

; closure construction
(define (larger-than limit)
  ; function with value closed over
  (lambda (value) (> value limit)))

; construct and use closure
(print (filter (larger-than 5) '(1 2 3 4 5 6 7 8 9 10)))

(define (larger-than-five)
  (larger-than 5))

; another usage of closure
(print (filter (larger-than-five) '(1 2 3 4 5 6 7 8 9 10)))

; another usage of closure
(print ((larger-than 5) 0))
(print ((larger-than 5) 10))

; yet another usage of closure
(print ((larger-than-five) 0))
(print ((larger-than-five) 10))
