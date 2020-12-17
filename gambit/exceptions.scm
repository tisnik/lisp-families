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

(define (safe-div x y)
  (with-exception-catcher
    (lambda (error) #f)
    (lambda () (/ x y))))

(print (safe-div 10 3))
(print (safe-div 10 0))
