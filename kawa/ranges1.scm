; Examples prepared for Kawa
; https://www.gnu.org/software/kawa/

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

(display [1 <: 10])
(newline)

(display [1 <=: 10])
(newline)

(display [1 by: 2 <=: 10])
(newline)

(display [10 >: 0])
(newline)

(display [10 by: -2 >: 0])
(newline)

(display [10 >=: 0])
(newline)

(display [10 by: -2 >=: 0])
(newline)

(display [1 by: 1/2 <=: 10])
(newline)

(display [0 by: 1/10 <=: 1])
(newline)
