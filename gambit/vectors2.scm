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

(define vector2 (vector 1 2 3 4 5))

(display vector2)
(newline)

(display (vector-ref vector2 0))
(newline)

(vector-set! vector2 2 -1)

(display vector2)
(newline)
