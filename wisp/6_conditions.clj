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

; Test překladu podmínek do JavaScriptu


; na základě podmínky se vyhodnotí (a vrátí jako výsledek)
; buď řetězec "mensi" nebo "vetsi"
(if (< variableA variableB) "mensi" "vetsi")

; větev "else" lze vynechat, vrací se nil resp. jeho ekvivalent
(if (< variableA variableB) "mensi")

; samotná speciální forma if může být volána uvnitř složitějšího výrazu
(* 84 (if (== a b) (+ c d) (/ e f)))

; vnořené formy if
(if (< n 0) "negative"
    (if (> n 0) "positive"
                "zero"))

; speciální forma cond
(cond
    (< n 0) "negative"
    (> n 0) "positive"
    :else "zero")

