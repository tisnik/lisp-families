; Examples for Clojure-py a dialect of the Lisp programming language designed to interact with Python
;
;  (C) Copyright 2018  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; Kolekce a další strukturované datové typy


; pomocné proměnné
(def positionX 1)
(def positionY 2)
(def positionZ 3)


; Seznamy

; prázdný seznam
'()

; seznam čísel
'(1 2 3 4)

; seznam řetězců
'("prvni" "druhy" "treti")

; seznam "keywords"
'(:prvni :druhy :treti)

; seznam s proměnnými
'(positionX positionY positionZ)

; vnořené seznamy
'( '(:x :y) '(:z :w) )


; Vektory

; prázdný vektor
[]

; vektor čísel
[1 2 3 4]

; vektor řetězců
["prvni" "druhy" "treti"]

; vektor "keywords"
[:prvni :druhy :treti]

; vektor proměnných
[positionX positionY positionZ]


; Mapa

; prázdná mapa
{}

; mapování typu string-string
{"prvni" "first" "druhy" "second" "treti" "third"}

; mapa s vyhodnocením proměnných
{"X" positionX "y" positionY "z" positionZ}


; Množina
#{"prvni" "druhy" "treti"}

