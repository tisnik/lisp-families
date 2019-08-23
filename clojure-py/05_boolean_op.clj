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

; Test překladu booleovských výrazů


(def a 1)
(def b 2)
(def c 3)
(def d 4)

; porovnání tří hodnot
; relace "menší než"
(< a b c)

; relace "větší než"
(> a b c)

; porovnání čtyř hodnot na ekvivalenci
(= 1 2 3 4)

; operace and a or
(and True False)
(or True False)
(and a b c d)
(or a b c d)

; někdy je "if" zbytečné použít
(or (< a 10) "nesplneno")
(and (< a 10) "splneno")

; různé kombinace
(and (= a b) (= c d))
(and (or a b) (or c d))

; ještě se neztrácíte?
(and (> (+ a b) 0) (> (+ c d) 0))

