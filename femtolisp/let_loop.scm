; Examples prepared for Femtolisp
; https://github.com/JeffBezanson/femtolisp

;
;  (C) Copyright 2022  Pavel Tisnovsky
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

(define (let-loop)
  (let loop ((i 0))
    (cond ((> i 10))
          (else (print i)
                (loop (+ i 1))))))

(let-loop)
