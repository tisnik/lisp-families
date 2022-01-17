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

(print
    (case (car '(a y x))
    ((a e i o u) 'vowel)
    ((w y) 'semivowel)
    (else 'consonant)))

(print
    (case (cadr '(a y x))
    ((a e i o u) 'vowel)
    ((w y) 'semivowel)
    (else 'consonant)))

(print
    (case (caddr '(a y x))
    ((a e i o u) 'vowel)
    ((w y) 'semivowel)
    (else 'consonant)))
