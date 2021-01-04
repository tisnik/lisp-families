; Examples prepared for Kawa

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

(print '(1 . 2))

(print '(1 . ((2 . 3) . 4)))

(print '((1 . 2) . (3 . 4)))

; this is proper list
(print '(1 . (2 . (3 . nil))))

; this is proper list
(print '(1 . (2 . (3 . ()))))
