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

(define x 1)
(define y 2)

(define (add x y)
  (+ x y))

(print (add x y))
(set! x 10)
(print (add x y))
