(do ((y 1 (+ y 1)))    ; počáteční hodnota počitadla a iterační příkaz
  ((> y 10))           ; podmínka pro ukončení smyčky
  (do ((x 1 (+ x 1)))  ; vnitřní smyčka
    ((> x 10))         ; podmínka pro ukončení vnitřní smyčky
    (display (/ x y))  ; tisk výsledku
    (display "\t"))    ; přechod na další tabelační zarážku 
  (newline))           ; přechod na další řádek
