; Examples prepared for Femtolisp

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
(define (call-n-times n proc)
  (let loop ((n n))
    (unless (zero? n)
      (proc)
      (loop (- n 1)))))

(define (print-hello)
  (print "Hello"))

(call-n-times 10 print-hello)
