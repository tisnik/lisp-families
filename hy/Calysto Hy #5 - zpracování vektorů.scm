
; vektory nejsou neměnné (immutable) tak jako v Clojure!
(setv vektor [1 2 3 4])

; výraz pro přečtení prvku vektoru
(get vektor 1)

(get vektor -1)

(get vektor -2)

; speciální funkce pro významné prvky vektoru
(first vektor)

(last vektor)

; převod na sekvenci bez prvního prvku
(rest vektor)

; zpětný převod sekvence na vektor
(list (rest vektor))

; vylepšený způsob zápisu předchozího výrazu
(-> vektor rest list)

; dvourozměrný vektor (matice)
(setv matice [[1 2 3] [4 5 6] [7 8 9]])

matice

(setv vektor2 (list (range 20)))

(cut vektor2 2 -1 2)

(assoc vektor 2 42)

; přidání prvku do vektoru (na jeho konec)
(.append vektor 5)

; přidání prvku do vektoru (na jeho konec)
(vektor.append 5)

vektor
