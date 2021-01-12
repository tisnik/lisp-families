; Examples prepared for the classic AutoLISP

;
;  (C) Copyright 2020, 2021  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(defun C:vzdalenost ()
  (setq bod1 (getpoint "\nZadej počáteční bod: ") )
  (setq bod2 (getpoint "\nZadej koncový bod: ") )
  (distance bod1 bod2))
