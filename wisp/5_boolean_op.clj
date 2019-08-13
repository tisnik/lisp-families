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

; Test překladu booleovských výrazů do JavaScriptu


; porovnání tří hodnot
; relace "menší než"
(< a b c)

; relace "větší než"
(> a b c)

; porovnání čtyř hodnot na ekvivalenci
(== 1 2 3 4)

; pozor! identical? je forma akceptující jen dva parametry!
;(identical? 1 2 3 4)

; operace and a or
(and true false)
(or true false)
(and a b c d)
(or a b c d)

; někdy je "if" zbytečné použít
(or podminka "nesplneno")
(and podminka "splneno")

; různé kombinace
(and (== a b) (== c d))
(and (or a b) (or c d))

; ještě se neztrácíte?
(and (> (+ a b) 0) (> (+ c d) y))

