; Test překladu aritmetických výrazů


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
; Hy se chová jinak - se zlomky sice pracuje, ale / přeloží do operátoru /
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
(defvar variableA 1)
(defvar variableB 2)
(defvar variableC 3)
(defvar variableD 4)

(+ variableA variableB variableC variableD)
(* (+ variableA variableB) (+ variableC variableD))
(+ (* variableA variableB) (* variableC variableD))
(/ (+ variableA variableB) (+ variableC variableD))
