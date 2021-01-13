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

(defun C:obdelnik()
  (setq bod1 (getpoint "\nZadej počáteční bod obdélníka: ") )
  (setq bod3 (getpoint "\nZadej protilehlý bod obdélníka: ") )
  (setq bod2 (list (car bod3) (cadr bod1) ) )
  (setq bod4 (list (car bod1) (cadr bod3) ) )
  (command "PLINE" bod1 bod2 bod3 bod4 "CLOSE"))
