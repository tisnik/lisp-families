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
