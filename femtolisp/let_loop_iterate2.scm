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

; https://codereview.stackexchange.com/questions/110741/looping-in-scheme
(define (call-n-times n proc argument)
  (let loop ((n n))
    (unless (zero? n)
      (proc argument)
      (loop (- n 1)))))

(call-n-times 10 print "Hello")
