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

(define array3 (float[] 100 200 300 400 500 600 700 800 900 1000))

(display array3)
(newline)

(set! (array3 9) -1000)

(display array3)
(newline)
