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

(do ((i 1 (+ i 1)))  ; počáteční hodnota počitadla a iterační výraz provedený na konci smyčky
    ((= i 10))       ; podmínka vyhodnocovaná pro ukončení smyčky
        (display i)  ; tělo smyčky
        (newline))
