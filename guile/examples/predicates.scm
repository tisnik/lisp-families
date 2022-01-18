; Examples for Guile 2.x

;
;  (C) Copyright 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(define (print item)
  (display item)
  (newline))

(define nil '())

(print "pair?")
(print (pair? nil))
(print (pair? #t))
(print (pair? 42))
(print (pair? "string"))
(print (pair? '(1 2 3)))
(newline)

(print "list?")
(print (list? nil))
(print (list? #t))
(print (list? 42))
(print (list? "string"))
(print (list? '(1 2 3)))
(newline)

(print "null?")
(print (null? nil))
(print (null? #t))
(print (null? 42))
(print (null? "string"))
(print (null? '(1 2 3)))
(newline)

(print "zero?")
(print (zero? 0))
(print (zero? 42))
(newline)
