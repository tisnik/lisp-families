#lang racket/base

(println (make-hash))

; create hash map and assign it to symbol
; (=variable)
(define a (make-hash))

(println a)

(println (hash "red" "#ff0000" "green" "#00ff00" "blue" "#0000ff"))

(define h1 (make-hash '(["red" "#ff0000"] ["green" "#00ff00"] ["blue" "#0000ff"])))
(println h1)

(define h2 (make-hash '(["red" . "#ff0000"] ["green" . "#00ff00"] ["blue" . "#0000ff"])))
(println h2)
