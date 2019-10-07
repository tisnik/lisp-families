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
(and true false)
(or true false)
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

