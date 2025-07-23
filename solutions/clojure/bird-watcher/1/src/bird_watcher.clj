(ns bird-watcher)

(def last-week [0 2 5 3 7 8 4] )

(defn today [birds] (last birds) )

(defn inc-bird [birds]
  (assoc birds (- (count birds) 1) (+ 1 (today birds))))

(defn day-without-birds? [birds] (not (empty? (filter #(= 0 %) birds))))

(defn n-days-count [birds n] (reduce + (subvec birds 0 n)))

(defn busy-days [birds] (count (filter #(>= % 5) birds)))

(defn odd-week? [birds]
  (or
   (and
    (=
     (count (filter #(= % 0) (take-nth 2 (rest birds))))
     (count (take-nth 2 (rest birds))))
    (=
     (count (filter #(= % 1) (take-nth 2 birds)))
     (count (take-nth 2 birds)))
    )
   (and
    (=
     (count (filter #(= % 1) (take-nth 2 (rest birds))))
     (count (take-nth 2 (rest birds))))
    (=
     (count (filter #(= % 0) (take-nth 2 birds)))
     (count (take-nth 2 birds)))
    )))
