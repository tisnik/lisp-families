;
;  (C) Copyright 2020, 2021, 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(define (factorial n)
  (if (= n 0) ; podmínka pro ukončení rekurzivního zanořování
    1         ; faktoriál nuly je definitoricky roven jedné
    (* n (factorial (- n 1)))
  )
)

; pocitadlo
(define n 0)

; tisk tabulky s faktorialy
(do ()
  ((>= n 30))
  (display (factorial n))
  (newline)
  (set! n (+ n 1)))
