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
  (let fact-iter (        ; pomocná vnitřní funkce
              (n n)       ; počitadlo iterací
              (result 1)) ; průběžný výsledek
    (if (= n 0)           ; po dosažení koncového stavu
      result              ; se vrátí průběžný výsledek
      (fact-iter (- n 1) (* n result)) ; koncové volání
    )))


; pocitadlo
(define n 0)

; tisk tabulky s faktorialy
(do ()
  ((>= n 30))
  (display (factorial n))
  (newline)
  (set! n (+ n 1)))
