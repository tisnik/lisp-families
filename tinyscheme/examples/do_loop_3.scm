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

(do (
        (x 1 (* x 2))    ; poèáteèní hodnota promìnné a iteraèní výraz provedený na konci smyèky
        (y 1000 (- y 1)) ; dtto
        (z 0 (* x y)))   ; dtto
    ((< y x))         ; podmínka vyhodnocovaná pro ukonèení smyèky
        (display (list x y z)) ; tìlo smyèky
        (newline))
