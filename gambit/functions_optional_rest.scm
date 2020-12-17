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

(define (f1 #!optional (a 4) #!key (b 5) c)
  (print a)
  (print b)
  (print c)
  (newline))

(define (f2 #!key (i 5) #!rest j)
  (print i)
  (print j)
  (newline))

(f1)
(f1 1)
(f1 2 b: 3)
(f1 4 b: 5 c: 6)
(f1 7 c: 8)
(f2 9)
(f2 10 i: 11)
(f2 i: 12 13)
