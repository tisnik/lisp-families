; **********************************************************
; tato funkce přesune všechny úsečky do zvolené hladiny
; **********************************************************
;presun vsech usecek do jine hladiny
(defun change_lines_layer (new_layer)
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
            ; programový blok
            (progn
                ; zvýší se počitadlo úseček
                (setq count (1+ count))
                ; změna atributů grafické entity
                ; každý atribut je dvojice kód atributu:hodnota atributu
                (setq entity_data (subst (cons 8 new_layer) (assoc 8 entity_data) entity_data))
                (entmod entity_data)))

        ; přechod na další entitu ve výkresu
        (setq entity (entnext entity))
    )   ;konec while
    ; hodnota posledního výrazu ve funkci je i její návratovou hodnotou
    count)
