(defn factorial [n] (reduce * (range 1.0 (inc n))))
(doseq [n (range 0 30)] (println n (factorial n)))
