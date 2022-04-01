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

(define (factorial n :: int) :: int
  (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
    1         ; faktoriál nuly je definitoricky roven jedné
    (* n (factorial (- n 1)))
  )
)


(define n :: int 0)

(do ()
  ((>= n 30))
  (display (factorial n))
  (newline)
  (set! n (+ n 1)))
