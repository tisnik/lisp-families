;
;  (C) Copyright 2020, 2021, 2022  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

; pocitadlo
(define i 0)

; tabulka sekvence hodnot
(do ()
  ((>= i 10))
  (display i)
  (newline)
  (set! i (+ i 1)))

