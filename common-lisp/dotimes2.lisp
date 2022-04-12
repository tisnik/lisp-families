(defvar counter)
(setq counter 0)
(print counter)

(dotimes (i 10)
  (incf counter))

(print counter)
