(defn factorial [n] (reduce * (range 1N (inc n))))
(doseq [n (range 0 30)] (println n (factorial n)))
