(ns raindrops)

(defn convert [n]
  (let [s (str
           (if (= (mod n 3) 0) "Pling")
           (if (= (mod n 5) 0) "Plang")
           (if (= (mod n 7) 0) "Plong"))]
    (if (= s "") (str n) s))
)
