(print "atom")
(print (atom nil))
(print (atom T))
(print (atom 42))
(print (atom "string"))
(print (atom '(1 2 3)))

(print "listp")
(print (listp nil))
(print (listp T))
(print (listp 42))
(print (listp "string"))
(print (listp '(1 2 3)))

(print "zerop")
(print (zerop 0))
(print (zerop 42))

(quit)
