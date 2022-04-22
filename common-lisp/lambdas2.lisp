(print ((lambda (a b &optional c d) (list "two or more parameters" a b c d)) 10 20))
(print ((lambda (a b &optional c d) (list "two or more parameters" a b c d)) 10 20 30))
(print ((lambda (a b &optional c d) (list "two or more parameters" a b c d)) 10 20 30 40))

(print ((lambda (a b &rest values) (list "two or more parameters" a b values)) 10 20))
(print ((lambda (a b &rest values) (list "two or more parameters" a b values)) 10 20 30))
(print ((lambda (a b &rest values) (list "two or more parameters" a b values)) 10 20 30 40))
