; Skriptování v GIMPu

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
(define (script-draw-selection
                             selected-image
                             selected-layer
                             selection-color
                             use-feather
                             feather-radius)

    ; nastaveni rozmazani
    (gimp-context-set-feather use-feather)
    (gimp-context-set-feather-radius feather-radius feather-radius)

    ; vytvoření výběru ve tvaru čtverce
    (gimp-image-select-rectangle
        selected-image        ; obrázek v němž se výběr vytvoří
        CHANNEL-OP-REPLACE    ; přepsání oblasti původního výběru
        150 150 100 100)      ; rozměry výběru

    ; přidání dalšího výběru ve tvaru kružnice
    (gimp-image-select-ellipse
        selected-image        ; obrázek v němž se výběr vytvoří
        CHANNEL-OP-ADD        ; přidání oblasti ke stávajícímu výběru
        80 80 100 100)        ; rozměry výběru

    ; přidání dalšího výběru ve tvaru kružnice
    (gimp-image-select-ellipse
        selected-image        ; obrázek v němž se výběr vytvoří
        CHANNEL-OP-ADD        ; přidání oblasti ke stávajícímu výběru
        220 220 100 100)      ; rozměry výběru

    ; volba barvy v paletě
    (gimp-palette-set-background selection-color)

    ; vykreslení obrazce - jeho výplň
    (gimp-edit-fill selected-layer BG-IMAGE-FILL)

    ; zrušení výběru (lze vrátit pomocí CTRL+Z)
    (gimp-selection-none selected-image)

    ; přinutíme GIMP, aby finální obrázek vykreslil
    (gimp-displays-flush)  )

; základní informace o skriptu a definice dialogu
; zobrazeného uživateli
(script-fu-register "script-draw-selection"
                    "<Image>/Filters/Render/Pattern/Selection"
                    "Vykresli komplikovanejsi obrazec pomoci vyberu"
                    "Pavel Tisnovsky"
                    "Pavel Tisnovsky"
                    "2017-05-05"
                    "RGB*, INDEXED*, GRAY*"
                    SF-IMAGE      "Image"          0
                    SF-DRAWABLE   "Drawable"       0
                    SF-COLOR      "Color"          "yellow"
                    SF-TOGGLE     "Feather"        FALSE
                    SF-ADJUSTMENT "Feather radius" '(10 1 100 1 10 0 0))

; finito
