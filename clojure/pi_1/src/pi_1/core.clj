(ns pi-1.core
  (:gen-class))

(defn compute-pi
  [n]
  (loop [pi 4.0
         i  3]
         (if (< i (+ n 2))
             (recur (* pi (/ (- i 1) i) (/ (+ i 1) i))
                    (+ i 2))
             pi)))

(defn -main
  [& args]
  (loop [n 1]
    (print n "\t")
    (println (compute-pi n))
    (if (< n 5000000)
      (recur (* n 2)))))
