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

; Test překladu programových smyček do JavaScriptu


; počitadlo od 0 do 10
(loop [i 0]
    (if (== i 10)          ; podmínka pro ukončení smyčky
        sum                ; návratová hodnota při splnění podmínky
        (recur (+ i 1))))  ; rekurze (s TCO)

; výpočet desáté mocniny dvojky
(loop [i 0 sum 1]
    (if (== i 10)          ; podmínka pro ukončení smyčky
        sum                ; návratová hodnota při splnění podmínky
        (recur (+ i 1) (* sum 2))))  ; rekurze (s TCO)

; funkce pro výpočet n-té mocniny dvojky
(defn pow2
    [n]
    (loop [i 0 sum 1]
        (if (== i n)       ; podmínka pro ukončení smyčky
            sum            ; návratová hodnota při splnění podmínky
            (recur (+ i 1) (* sum 2)))))  ; rekurze (s TCO)

; příklad pro výpočet sumy pole
(def array [1 2 3 4 5])

(loop [i 0 sum 0]
    (if (== i 5)           ; podmínka pro ukončení smyčky
        sum                ; návratová hodnota při splnění podmínky
        (recur (+ i 1) (+ sum (get array i) ))))  ; rekurze (s TCO)

; explicitní TCO?
(defn power
    ([x y]
        (power x y 1))
    ([x y current]
        (if (== y 0)
            current
            (if (> y 0)
                (recur x (- y 1) (* x current))
                (recur x (+ y 1) (/ current x))))))

(defn power2
    [x y]
    (loop [exponent y
           current 1.0]
        (if (== exponent 0)
            current
            (if (> exponent 0)
                (recur (- exponent 1) (* x current))
                (recur (+ exponent 1) (/ current x))))))

