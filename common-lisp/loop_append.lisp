(defvar lst '(1 2 3 4 5 6 7 8 9 10))

(defvar result
        (loop for i in lst
              collect i))

(dolist (item result)
  (print item))

(terpri)
(princ "-------------------------------------")

(defvar kids '((alfa beta) () (gama delta) (omega) ()))

(setq result
      (loop for i in kids
            append i))

(dolist (item result)
  (print item))
