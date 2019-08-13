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

; Ukázka použití proměnných.


; Pozor: proměnné nejsou ve Wispu neměnitelné (immutable)
; tak jako je tomu v originálním Clojure!
(def x 42)

(def y (+ x 1))

(def z [1 2 3 4])

; lokální proměnné v rámci modulu
(def ^:private xx 42)

(def ^:private yy (+ x 1))

(def ^:private zz [1 2 3 4])

; mutátor
(set! x (- x 1))

; speciální formu if je možné použít i uvnitř výrazu
(set! y (if (< x 0) "negative" "positive"))

; změna typu hodnoty uložené do proměnné
(set! x [1 2 3 4])
(set! x "Hello World!")
(set! x 0)
(set! x true)
(set! x nil)

; proměnné jsou přístupné i uvnitř funkcí
(defn foo
    []
    (+ x 1))

; proměnné versus lokální symboly
(defn foo
    []
    (print x)
    (let [x 42]
        (print x)))

; proměnné versus lokální symboly
(defn foo
    []
    (print x)
    (let [x 42]
        (let [x 99999]
            (print x))
        (print x)))

