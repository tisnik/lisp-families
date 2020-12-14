(define (print item)
  (display item)
  (newline))

(define (f1)
  (print "no parameters"))

(define (f2 a)
  (print "one parameter")
  (print a))

(define (f3 a b)
  (print "two parameters")
  (print a)
  (print b))

(define (f4 a #!optional b)
  (print "at least one parameter")
  (print a)
  (print b))

(define (f5 a b #!optional c)
  (print "at least two parameters")
  (print a)
  (print b)
  (print c))

(define (f6 a #!optional (b -1))
  (print "at least one parameter")
  (print a)
  (print b))

(define (f7 a b #!optional (c -1))
  (print "at least two parameters")
  (print a)
  (print b)
  (print c))

(f1)
(f2 10)
(f3 1 2)
(f4 1)
(f4 1 2)
(f5 1 2)
(f5 1 2 3)
(f6 1)
(f6 1 2)
(f7 1 2)
(f7 1 2 3)