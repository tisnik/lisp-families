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

(define (print item)
     (display item)
     (newline))

(make-quantity 10 "cm")
(print 10cm)

(define-base-unit meter "distance")
(define-unit stadion 176meter)

(print 100stadion)
(print (* 2stadion 3))

(print (* 10cm 2))
(print (* 10cm 10))
(print (* 10cm 10cm))

(print (/ 10s 5cm))
(print (/ 10cm 5s))

(define-base-unit A "electric current")
(define-base-unit V "voltage")

(print (* 3A 5V))

(define power (* 3A 5V))
(define resistance (/ 5V 3A))

(print power)
(print resistance)

(define wrong-power (* 3A 5cm))
(print wrong-power)
