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

(do ((i 1 (+ i 1)))  ; po��te�n� hodnota po�itadla a itera�n� v�raz proveden� na konci smy�ky
    ((= i 10))       ; podm�nka vyhodnocovan� pro ukon�en� smy�ky
        (display i)  ; t�lo smy�ky
        (newline))
