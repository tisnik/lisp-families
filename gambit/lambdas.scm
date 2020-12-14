(lambda () (print "no parameters"))

(lambda (a) (print "one parameter"))

(lambda (a b) (print "two parameters"))

(lambda (a . b) (print "at least one parameter"))

(lambda (a b . c) (print "at least two parameters"))

(lambda x (print "zero or more parameters"))
