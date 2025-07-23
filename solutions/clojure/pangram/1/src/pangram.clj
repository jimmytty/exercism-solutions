(ns pangram)

(defn pangram? [sentence]
  (=
   (count
    (set
     (filter #(Character/isLetter %) (clojure.string/lower-case sentence))))
   26)
)
