(defvar n 10)

(cond
      ((< n 0)      'negative)
      ((> n 0)      'positive)
      ((zerop n)    'zero))

(defvar n -10)

(cond
      ((< n 0)      'negative)
      ((> n 0)      'positive)
      ((zerop n)    'zero))

(defvar n 0)

(cond
      ((< n 0)      'negative)
      ((> n 0)      'positive)
      ((zerop n)    'zero))
