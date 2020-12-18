;
;  (C) Copyright 2020  Pavel Tisnovsky
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

(define b (list 1 2 3))

(print "quote:")
(print '(a b c))
(print '(a ,b c))
(print '(a ,@b c))
(newline)

(print "quasiquote:")
(print `(a b c))
(print `(a ,b c))
(print `(a ,@b c))
(newline)
