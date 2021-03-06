; Článek "Tvoříme skripty pro grafický editor GIMP (2)"
; Demonstrační příklad číslo 3

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

; Tato funkce je zavolána z dialogu vyvolaného uživatelem
; z grafického uživatelského rozhraní GIMPu.
(define (script-fu-spirals-2
                             selected-image
                             selected-layer
                             selected-spins
                             center-x center-y
                             start-radius
                             end-radius
                             start-angle)

    ; definice lokálních proměnných
    (let*
        (
            ; konstanta - počet vrcholů křivky
            ; na jednu otočku spirály
            (vertexes-per-spin 300)

            ; počet prvků vektoru = (x1, y1, x2, y2)
            (npoint 4)

            ; vykreslovaná úsečka je představována vektorem
            ; (vektorem je v tomto kontextu myšlena datová
            ; struktura programovacího jazyka Scheme)
            (segment (make-vector 4 ))

            ; úhly zvětšující se pro každý další vykreslený úsek
            (alfa 0)
            (beta 0)

            ; konstanta - 2xPi
            (full-circle (* 3.1415927 2))

            ; počet vykreslených segmentů
            (step (/ full-circle vertexes-per-spin))

            ; úprava hodnoty zadané uživatelem
            (spins (+ selected-spins 1))

            ; vzdálenost vykreslovaného úseku od středu spirály
            (radius start-radius)
            (old-radius radius)

            ; změna vzdálenosti pro každý další úsek
            (radius-delta (/ (- end-radius start-radius) (* vertexes-per-spin spins 1)))
        )
        (gimp-undo-push-group-start selected-image)

        ; programová smyčka, v níž se vykreslí úsečkové segmenty
        ; ze kterých se skládá aproximace spirály
        (while (&lt;= alfa (* full-circle spins 1))
            (set! beta (+ alfa step))
            (set! radius (+ radius radius-delta))
            ; vypočet počáteční a koncové souřadice úsečky
            (vector-set! segment 0 (+ center-x (* old-radius (cos (+ alfa start-angle) ))))
            (vector-set! segment 1 (+ center-y (* old-radius (sin (+ alfa start-angle) ))))
            (vector-set! segment 2 (+ center-x (* radius (cos (+ beta start-angle) ))))
            (vector-set! segment 3 (+ center-y (* radius (sin (+ beta start-angle) ))))

            ; vykreslení úsečky štětcem
            (gimp-paintbrush selected-layer 100 npoint segment 0 10)

            ; přinutíme GIMP, aby obrázek průběžně vykresloval
            (gimp-displays-flush)
            ; přechod na další úsek
            (set! alfa beta)
            (set! old-radius radius)
        )
        ; uložíme stav obrázku na zásobník
        (gimp-undo-push-group-end selected-image) 
    )
    ; naposledy přinutíme GIMP, aby finální obrázek vykreslil
    (gimp-displays-flush)  
)


; základní informace o skriptu a definice dialogu
; zobrazeného uživateli
(script-fu-register "script-fu-spirals-2"
    _"_Spirals-2"
    _"Renders various spirals to current layer"
    "Pavel Tisnovsky"
    "Pavel Tisnovsky"
    "2010-05-11"
    "RGB*, INDEXED*, GRAY*"
    SF-IMAGE       "Image"         0
    SF-DRAWABLE    "Drawable"      0
 
    SF-OPTION     _"Spins"        '(_"1"
                                    _"2"
                                    _"3"
                                    _"4")
    SF-ADJUSTMENT _"X center"     '(200 0 999 1 10 0 1)
    SF-ADJUSTMENT _"Y center"     '(200 0 999 1 10 0 1)
    SF-ADJUSTMENT _"Start radius" '(20  0 999 1 10 0 1)
    SF-ADJUSTMENT _"End radius"   '(180 0 999 1 10 0 1)
    SF-ADJUSTMENT _"Start angle"  '(0 0 359 1 10 0 0)
)

; registrace skriptu do menu
(script-fu-menu-register "script-fu-spirals-2"
                         "&lt;Image&gt;/Root.cz")

; finito
