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

(define vector1 '#(1 2 3 4))

(display vector1)
(newline)

(display (vector-ref vector1 0))
(display (vector-ref vector1 10))
