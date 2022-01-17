; Examples prepared for Femtolisp

;
;  (C) Copyright 2020, 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; helper function to print a value with newline appended
(define (print item)
     (princ item)
     (newline)
     "")

(define nil '())

(print "atom?")
(print (atom? nil))
(print (atom? #t))
(print (atom? 42))
(print (atom? 3.14))
(print (atom? "string"))
(print (atom? '(1 2 3)))
(print (atom? [1 2 3]))
(newline)

(print "list?")
(print (list? nil))
(print (list? #t))
(print (list? 42))
(print (list? 3.14))
(print (list? "string"))
(print (list? '(1 2 3)))
(print (list? [1 2 3]))
(newline)

(print "vector?")
(print (vector? nil))
(print (vector? #t))
(print (vector? 42))
(print (vector? 3.14))
(print (vector? "string"))
(print (vector? '(1 2 3)))
(print (vector? [1 2 3]))
(newline)

(print "null?")
(print (null? nil))
(print (null? #t))
(print (null? 42))
(print (null? 3.14))
(print (null? "string"))
(print (null? '(1 2 3)))
(print (null? [1 2 3]))
(newline)

(print "number?")
(print (number? nil))
(print (number? #t))
(print (number? 42))
(print (number? 3.14))
(print (number? "string"))
(print (number? '(1 2 3)))
(print (number? [1 2 3]))
(newline)

(print "fixnum?")
(print (fixnum? nil))
(print (fixnum? #t))
(print (fixnum? 42))
(print (fixnum? 3.14))
(print (fixnum? "string"))
(print (fixnum? '(1 2 3)))
(print (fixnum? [1 2 3]))
(newline)

(print "zero?")
(print (zero? 0))
(print (zero? 42))
(newline)
