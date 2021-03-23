
(setv hello-code '(print "Hello world!"))

hello-code

(hello-code)

(eval hello-code)

'(1 2 3)

`(* 6 7)

`(1 2 (* 6 7) (/ 4 2))

`(1 2 ~(* 6 7) (/ 4 2))
