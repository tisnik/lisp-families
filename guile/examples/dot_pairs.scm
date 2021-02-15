; Examples for Guile 2.x

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

; helper function to print a value with newline appended
(define (print item)
  (display item)
  (newline))

; usage of so-called dot pairs
(print '(1 . 2))

; another combination of dot-pairs
(print '(1 . ((2 . 3) . 4)))

; another combination of dot-pairs
(print '((1 . 2) . (3 . 4)))

; this is proper list
(print '(1 . (2 . (3 . nil))))

; this is proper list
(print '(1 . (2 . (3 . ()))))
