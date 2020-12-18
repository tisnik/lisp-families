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
     (display item)
     (newline))

(print '(1 2 3 4))

(print (list 1 2 3 4))

; create list and assign it to symbol
; (=variable)
(define a '(1 2 3 4))

; get the first item
(print (car a))

; get the rest of a list
(print (cdr a))

; combination of car+cdr
(print (cadr a))

; combination of cdr+cdr
(print (cddr a))
