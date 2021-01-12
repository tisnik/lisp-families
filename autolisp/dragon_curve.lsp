; Examples prepared for the classic AutoLISP

; **********************************************************
; Inicializační funkce pro vykreslení fraktální Dračí křivky
; **********************************************************
(defun C:drak (/ point1 segment-length min-segment-length)
    (setq point1 (getpoint "\nEnter origin of curve: ")
    (setq segment-length (getdist "\nEnter length of one segment: ")
    (setq min-segment-length (getdist "\nEnter minimal segment length: "))
    ; vypnutí opisu všech příkazů na terminál
    (setvar "cmdecho" 0)
    ; vypnutí vykreslování pomocných bodů
    (setvar "blipmode" 0) ;vypne pomocné body
    ; začátek vykreslování polyčáry
    (command "PLINE" point1)
    (dragon-curve segment-length 0 1 min-segment-length)
    ; konec vykreslování polyčáry
    (command "")
    ; zapnutí opisu všech příkazů na terminál
    (setvar "cmdecho" 1))


; **********************************************************
; Tato funkce generuje fraktální (rekurzivní) Dračí křivku
; **********************************************************
(defun dragon-curve (segment-length uhel sign min-segment-length)
    (cond
        ( (< segment-length min-segment-length)
            (command (polar (getvar "LASTPOINT") uhel segment-length)))
        ; větev "else"
        ( T
            ; zkrácení délky segmentu o odmocninu ze dvou
            ; a provedení rekurze
            (dragon-curve (/ segment-length (sqrt 2.0))
                (+ uhel (* sign (/ pi 4.0)))
                1.0
                min-segment-length
            )
            ; zkrácení délky segmentu o odmocninu ze dvou
            ; a provedení rekurze
            (dragon-curve (/ segment-length (sqrt 2.0))
                (- uhel (* sign (/ pi 4.0)))
                -1.0
                min-segment-length))))
