; Examples prepared for Gambit Scheme
; http://www.gambitscheme.org/

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

(define (sgn n)
  (cond
    ((< n 0)      'negative)
    ((> n 0)      'positive)
    ((zero? n)    'zero)))

(print "sgn")
(print (sgn -10))
(print (sgn 0))
(print (sgn 10))
(newline)


(define (sgn-2 n)
  (cond
    ((< n 0)      'negative)
    ((> n 0)      'positive)
    (#t           'zero)))

(print "sgn-2")
(print (sgn-2 -10))
(print (sgn-2 0))
(print (sgn-2 10))
(newline)
