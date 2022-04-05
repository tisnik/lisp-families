; Examples prepared for Femtolisp
; https://github.com/JeffBezanson/femtolisp

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

; helper function to print a value with newline appended
(define (compute-pi n)
  (let ((pi 4.0))
    (do ((i 3 (+ i 2)))
      ((> i (+ n 2)))
      (set! pi (* pi (/ (- i 1) i) (/ (+ i 1) i))))
    pi))
 
(do ((n 1 (* n 2)))
  ((> n 10000000))
  (princ n)
  (princ " ")
  (princ (compute-pi n))
  (newline))
