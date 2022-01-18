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

(lambda () (print "no parameters"))

(lambda (a) (print "one parameter"))

(lambda (a b) (print "two parameters"))

(lambda (a . b) (print "at least one parameter"))

(lambda (a b . c) (print "at least two parameters"))

(lambda x (print "zero or more parameters"))
