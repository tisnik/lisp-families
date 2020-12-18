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

(define (compute-pi n)
  (let loop ((pi 4.0)
             (i 3))
    (if (<= i (+ n 2))
        (loop (* pi (/ (- i 1) i) (/ (+ i 1) i))
              (+ i 2))
        pi)))
 
(let loop ((n 1))
  (display n)
  (display " ")
  (display (compute-pi n))
  (newline)
  (if (<= n 10000000)
      (loop (* n 2))))
