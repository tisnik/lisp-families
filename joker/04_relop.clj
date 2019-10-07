; Test překladu relačních výrazů


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
(= 1 2)
(= 1 1)

; podvýrazy se nejprve vyhodnotí a posléze se porovnají
; vyhodnocené výsledky (v tomto případě dva atomy)
(= (+ 1 1) (/ 4 2) (* 2 10))

; namísto numerických hodnot lze použít i proměnné
(def variableA 1)
(def variableB 2)
(def variableC 3)
(def variableD 4)

(< variableA variableB)
(> variableA variableB)
(<= variableA variableB)
(>= variableA variableB)
(= variableA variableB)
(= variableA variableA)

(= (+ variableA variableA) (/ variableC variableD))

(or (= variableA 10) (= variableB 20) (> variableC 0))
(and (> variableA 0) (< variableA 100))

