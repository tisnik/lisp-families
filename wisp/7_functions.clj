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

; Test překladu deklarace funkcí do JavaScriptu

; anonymní funkce
(fn [x y] (+ x y))

; funkce navázaná na symbol == pojmenovaná funkce
(defn add
    [x y]
    (+ x y))

; lokální symboly (proměnné)
(defn add-abs
    [x y]
    (let [abs-x (if (< x 0) (- x) x)
          abs-y (if (< y 0) (- y) y)]
        (+ abs-x abs-y)))

; dokumentační řetězec a metadata
(defn inc
    "Returns a number one greater than num."
    {:version "1.0"}
    [num]
    (+ num 1))

; přetěžování funkcí
(defn add
    ([]
     0)
    ([x]
     x)
    ([x y]
     (+ x y))
    ([x y z]
     (+ x y z)))

