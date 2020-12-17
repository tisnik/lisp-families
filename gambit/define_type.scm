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

(define-type user name surname)

; konstruktor
(define john (make-user "John" "?"))
(print john)

; gettery
(print (user-name john))
(print (user-surname john))

; mutatory (settery)
(user-name-set! john "Real John")
(user-surname-set! john "Doe")
(print john)
(print (user-name john))
(print (user-surname john))

; predikaty
(print (user? 42))
(print (user? john))
