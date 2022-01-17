; Examples prepared for Femtolisp

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
     (princ item)
     (newline)
     "")

; cons usage
(print (cons 1 2))

; another cons usage
(print (cons 1 (cons 2 3)))

; dot-pairs
(print '((1 . 2) . (3 . 4)))

; this is proper list
(print (cons 1 (cons 2 (cons 3 '()))))

; poor man's nil (not fully compatible with LISP)
(define nil '())

; this is proper list
(print (cons 1 (cons 2 (cons 3 nil))))

; this is proper list
(print (cons 1 '(2 3 4)))

; this is also proper list
(print (cons 1 (cons 2 (cons 3 (cons 4 nil)))))

; this is NOT proper list
(print (cons 1 (cons 2 (cons 3 4))))
