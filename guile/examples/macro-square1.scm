; Examples for Guile 2.x

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


(define-syntax-rule (square x)
    (* x x))

(display (square 10))
(newline)

(display (macroexpand '(square 10)))
(newline)

(display (square (+ 1 2)))
(newline)

(display (macroexpand '(square (+ 1 2))))
(newline)
