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

(define (larger-than limit)
    (lambda (value) (> value limit)))

(print (filter (larger-than 5) '(1 2 3 4 5 6 7 8 9 10)))

(define (larger-than-five)
     (larger-than 5))

(print (filter (larger-than-five) '(1 2 3 4 5 6 7 8 9 10)))

(print ((larger-than 5) 0))
(print ((larger-than 5) 10))


(print ((larger-than-five) 0))
(print ((larger-than-five) 10))
