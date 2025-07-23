(ns two-fer)

(defn two-fer [& [name]]
  (format "One for %s, one for me." (cond (nil? name) "you" :else name)))
