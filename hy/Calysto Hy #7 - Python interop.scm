
(import [datetime [date :as d]])
 
(setv date (d 2018 02 28))
(print date)
(print date.year)
(print date.month)
(print date.day)
 
(setv now1 (.today d))
(print now1)
(setv now2 (d.today))
(print now2)
