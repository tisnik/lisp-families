
(defmacro print-expression
    [expression]
    `(do (print '~expression)
         (print ~expression)))

(print-expression (* 6 7))

(defmacro ap-each [lst &rest body]
  `(for [it ~lst] ~@body))

(ap-each [1 2 3] (print it))

(ap-each [1 2 3] (print (* it it)))
