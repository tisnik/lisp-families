(defvar lst '(1 2 3 4 5 6 7 8 9 10))

(defvar result
   (loop for i on lst by #'cddr
          collect i))

(dolist (item result)
  (print item))
