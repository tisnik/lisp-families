; Examples for Wisp: Homoiconic JS with clojure syntax, s-expressions & macros
;
;  (C) Copyright 2015  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; Test překladu relačních výrazů do JavaScriptu


; porovnání dvou číselných hodnot
; relace "menší než"
(< 1 2)

; relace "větší než"
(> 1 2)

; relace "menší nebo rovno"
(<= 1 2)

; relace "větší nebo rovno"
(>= 1 2)

; porovnání dvou výrazů na ekvivalenci
(== 1 2)
(== 1 1)

; pozor na rozdíl mezi = a ==
(= 1 2)
(= 1 1)

; navíc lze použít i speciální formu identical?
; ta se přeloží na operátor ===
(identical? 1 2)
(identical? [1 2] [3 4])

; podvýrazy se nejprve vyhodnotí a posléze se porovnají
; vyhodnocené výsledky (v tomto případě dva atomy)
(== (+ 1 1) (/ 4 2))

; namísto numerických hodnot lze použít i proměnné
(< variableA variableB)
(> variableA variableB)
(<= variableA variableB)
(>= variableA variableB)
(== variableA variableB)
(== variableA variableA)
(== (+ variableA variableA) (/ variableC variableD))
(identical? variableA variableB)

