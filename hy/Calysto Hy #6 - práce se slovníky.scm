
{"prvni" "first" "druhy" "second" "treti" "third"}

(setv d1 {:id 1 :name "Eda" :surname "Wasserfall"})
(get d1 :name)

(get d1 :xyname)

(setv d2 {:id 1 :name "Eda" :surname "Wasserfall" :actors ["Genadij Rumlena" "Pavel Vondruška"]})

(get d2 :actors 1)

(get d2 :actors 0)

(setv d3 {})
 
(assoc d3 :id 10)
 
(assoc d3 :name "Eda")
 
(assoc d3 :surname "Wasserfall")

(assoc d3 :id 10)

(del (get d3 :surname))

(dict (zip [:id :name :surname] [1 "Eda" "Wasserfall"]))

(repeat "A" 10)

(dict (zip (range 10) (repeat "A" 10)))

(-> (zip (range 10) (range 10 1 -1)) dict)

(-> (zip (range 10) (range 50 1 -1)) dict)
