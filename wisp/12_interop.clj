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

; Interoperabilita mezi Wisp a JavaScriptem


; konstruktory
(new Date)

(new Date "December 5, 2015 14:16:18")

; alternativní zápis konstruktorů
(Date.)

(Date. "December 5, 2015 14:16:18")

; volání metod

(def str "Hello world!")

(.indexOf str "!")

; alternativní zápis volání metod
(str.indexOf "!")

; uložení výsledků volání metod
(def x (.random Math))
(def y (Math.random))

; přístup k atributům je oproti Javě+Clojure poněkud komplikovanější
(def pole [1 2 3])
(.-length pole)

