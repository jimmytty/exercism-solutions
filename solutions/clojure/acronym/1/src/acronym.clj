(ns acronym
  (:require [clojure.string :as str]))

(defn acronym
  "Converts phrase to its acronym."
  [phrase]
  (cond (= "" phrase) phrase
        :else
        (str/upper-case
         (apply str
                (map #(subs % 0 1)
                     (str/split
                      (str/replace
                       phrase
                       #"([a-z])([A-Z])" "$1 $2")
                      #"[ -]"))))))
