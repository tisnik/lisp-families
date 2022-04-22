(print ((lambda () "no parameters")))

(print ((lambda (a) (list "one parameter" a)) 10))

(print ((lambda (a b) (list "two parameters" a b)) 10 20))
