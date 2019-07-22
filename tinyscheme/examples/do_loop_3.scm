(do (
        (x 1 (* x 2))    ; poèáteèní hodnota promìnné a iteraèní výraz provedený na konci smyèky
        (y 1000 (- y 1)) ; dtto
        (z 0 (* x y)))   ; dtto
    ((< y x))         ; podmínka vyhodnocovaná pro ukonèení smyèky
        (display (list x y z)) ; tìlo smyèky
        (newline))
