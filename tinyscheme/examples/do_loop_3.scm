(do (
        (x 1 (* x 2))    ; po��te�n� hodnota prom�nn� a itera�n� v�raz proveden� na konci smy�ky
        (y 1000 (- y 1)) ; dtto
        (z 0 (* x y)))   ; dtto
    ((< y x))         ; podm�nka vyhodnocovan� pro ukon�en� smy�ky
        (display (list x y z)) ; t�lo smy�ky
        (newline))
