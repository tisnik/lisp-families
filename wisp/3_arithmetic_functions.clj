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

; Test překladu aritmetických výrazů do JavaScriptu


; operace rozdílu - druhý argument funkce je odečten od prvního
(- 1 2)

; součet řady čísel
(+ 1 2 3 4 5 6 7 8 9 10)

; níže uvedený výraz v infixové notaci odpovídá: 1-2-3-4-5....-10:
(- 1 2 3 4 5 6 7 8 9 10)

; POZOR - závorky v LISPu nemají mnoho společného
; s vyjádřením priority aritmetických operací
; (nelze je použít tak volně jako například v céčku)
(* (+ 1 2) (+ 3 4))

(+ (* 1 2) (* 3 4))

; Clojure umí, podobně jako některé implementace LISPu,
; pracovat se zlomky, tj. snaží se racionální
; čísla vyjádřit formou zlomku (ideální jazyk do škol)
; To však není případ Wispu, ten používá nativní formát
; numerických hodnot JavaScriptu.
(/ 1 2)

(/ 1 2 3)

; zkusíme výpočet složitějšího zlomku
(/ (+ 1 2) (+ 3 4))

; dělení modulo
(mod 10 3)

; neracionální (reálná) čísla se vypisují tak, jak to
; známe z ostatních programovacích jazyků (samozřejmě
; v případě speciálních požadavků programátora lze použít
; různé formátovací funkce na úpravu výstupu)
(* 0.3 (/ (+ 1 2) (+ 3 4)))

; namísto numerických hodnot lze použít i proměnné
(+ variableA variableB variableC variableD)
(* (+ variableA variableB) (+ variableC variableD))
(+ (* variableA variableB) (* variableC variableD))
(/ (+ variableA variableB) (+ variableC variableD))
(mod sum items)

