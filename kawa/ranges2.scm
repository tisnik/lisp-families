; Examples prepared for Kawa
; https://www.gnu.org/software/kawa/

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

(define abeceda "abcdefghijklmnopqrstuvwxyz")

(display (abeceda [5 <=: 10]))
(newline)

(display (abeceda [5 by: 2 <=: 10]))
(newline)

(display (abeceda [20 >=: 5]))
(newline)

(display (abeceda [25 >=: 0]))
(newline)

(display (abeceda [<:]))
(newline)
