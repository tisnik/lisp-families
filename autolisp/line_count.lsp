; **********************************************************
; tato funkce vrátí počet všech úseček ve výkrese
; **********************************************************
(defun lines_count ()
    ; počitadlo entit
    (setq count 0)
    ; první entita v grafické databázi
    (setq entity (entnext))

    ; iterování seznamem všech entit
    (while entity
        ; získat seznam základních dat entity
        (setq entity_data (entget entity))

        ; pokud se jedná o úsečku
        (if (= "LINE" (cdr (assoc 0 entity_data)))
            ; zvýší se počitadlo úseček
            (setq count (1+ count)))
        ; přechod na další entitu ve výkresu
        (setq entity (entnext entity))
    )   ;konec while

    ; hodnota posledního výrazu ve funkci je i její návratovou hodnotou
    count)
