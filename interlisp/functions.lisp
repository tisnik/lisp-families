((lambda (x y) (+ x y)) 1 2)
(print ((lambda (x y) (+ x y)) 1 2))

(defineq (add (lambda (x y) (+ x y))))

(defineq (mul (lambda (x y)
  (* x y))))

(print (add 1 2))
(print (mul 6 7))
