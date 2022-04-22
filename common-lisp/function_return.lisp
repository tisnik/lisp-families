(defun test (i)
   (return-from test 10)
   (print "I'm here!")
   i)

(print (test 20))
