; Examples prepared for Chicken Scheme

;
;  (C) Copyright 2020  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(define (print item)
     (display item)
     (newline))

(define (factorial n)
    (let fact-iter (          ; pomocná vnitřní funkce
                  (n n)       ; počitadlo iterací
                  (result 1)) ; průběžný výsledek
        (if (= n 0)           ; po dosažení koncového stavu
            result            ; se vrátí průběžný výsledek
            (fact-iter (- n 1) (* n result)) ; koncové volání
        )))

(print (factorial 10))
