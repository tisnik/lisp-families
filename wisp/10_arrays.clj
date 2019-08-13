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

; Ukázka práce s poli (vektory).


; Pole == vektory nejsou neměnné (immutable) tak jako v Clojure!
(def pole [1 2 3 4])

; pouze výraz pro přečtení prvku pole
(aget pole 1)

; přečtení vybraného prvku z pole
(def x (aget pole 1))

; změna hodnoty prvků v poli
(aset pole 0 1000)
(aset pole 2 "Hello")

; alternativní způsob
(set! (aget pole 2) 999)


; dvourozměrné pole (matice)
(def matice [[1 2 3] [4 5 6] [7 8 9]])

; nepravidelná matice
(def matice2 [[1] [2 3] [4 5 6] [7 8 9 10]])

