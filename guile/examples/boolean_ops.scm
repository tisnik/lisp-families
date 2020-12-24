; Examples for Guile 2.x

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

(define nil '())

(print (and #t #t))
(print (and #t nil))
(print (or #t #t))
(print (or #t nil))
(print (or nil nil #t nil))
(print (or nil nil nil nil))
(print (not nil))
(print (not #t))

(define x 10)
(print (if (> x 0) "kladne" "zaporne"))

(define y 0)
(print (if (> y 0) "kladne" "zaporne"))

(define x 10)
(print (and (> x 0) "kladne"))

(define y 0)
(print (and (> y 0) "kladne"))