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

(define (f b #!key c (d 7) (e 8))
  (print b)
  (print c)
  (print e)
  (print e)
  (newline))

(f 0)
(f 1 c: 2)
(f 1 e: 5)
(f 1 c: 2 d: 3 e: 4)
