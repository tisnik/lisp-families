(defn compute-pi
    [n]
    (loop [pi 4/1
           i  3]
           (if (< i (+ n 2))
               (recur (* pi (/ (- i 1) i) (/ (+ i 1) i))
                      (+ i 2))
               pi)))


(loop [n 1]
    (print n "\t")
    (println (double (compute-pi n)))
    (if (< n 500000)
        (recur (* n 2))))

