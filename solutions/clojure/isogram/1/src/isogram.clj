(ns isogram)

(defn isogram? [phrase]
  (let [letters
        (filter #(Character/isLetter %) (clojure.string/lower-case phrase))]
    (= (count (set letters))
       (count letters)))
)
