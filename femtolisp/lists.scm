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

(print "Empty list")
(print '())
(newline)

(print "A list")
(print '(1 2 3 4))
(newline)

(print "Another list")
(print (list 1 2 3 4))
(newline)

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(print "car")
(print (car a))
(newline)

; get the rest of a list
(print "cdr")
(print (cdr a))
(newline)

; combination of car+cdr
(print "cadr")
(print (cadr a))
(newline)

; combination of cdr+cdr
(print "cddr")
(print (cddr a))
(newline)
