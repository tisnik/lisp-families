; Examples prepared for Kawa

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

(do ((y 1 (+ y 1)))    ; počáteční hodnota počitadla a iterační příkaz
  ((> y 10))           ; podmínka pro ukončení smyčky
  (do ((x 1 (+ x 1)))  ; vnitřní smyčka
    ((> x 10))         ; podmínka pro ukončení vnitřní smyčky
    (display (/ x y))  ; tisk výsledku
    (display "\t")     ; přechod na další tabelační zarážku 
  )
  (newline)            ; přechod na další řádek
)
