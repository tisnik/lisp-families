(defun C:vzdalenost ()
  (setq bod1 (getpoint "\nZadej počáteční bod: ") )
  (setq bod2 (getpoint "\nZadej koncový bod: ") )
  (distance bod1 bod2))
