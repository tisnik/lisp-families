(ns pi-2.core
  (:gen-class))

(defn compute-pi
  [n]
  (loop [pi 4.0
         i  3]
         (if (< i (+ n 2))
             (recur (* pi (/ (- i 1) i) (/ (+ i 1) i))
                    (+ i 2))
             pi)))

(def power-of-2
  (iterate (partial * 2) 2))

(defn -main
  [& args]
  (let [ns (take-while (partial > 10000000) power-of-2)
        pi (pmap compute-pi ns)
        result (map vector ns pi)]
    (doseq [r result]
      (println (first r) "\t" (nth r 1))))
  (shutdown-agents))
