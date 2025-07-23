(ns squeaky-clean
  (:require [clojure.string :as str]))

(defn clean
  "a partial set of utility routines to help a developer clean up
  identifier names."
  [s]
  (def name s)

  ;; Replace any spaces encountered with underscores
  (def name (str/replace name #"\s" "_"))

  ;; Replace control characters with the upper case string "CTRL"
  (def name (str/replace name #"\p{Cc}" "CTRL"))

  ;; Convert kebab-case to camelCase
  (def name (str/replace name #"-(\p{Ll}+)" #(str/capitalize (%1 1))))

  ;; Omit characters that are not letters
  (def name
    (apply str (filter (fn [x] (or (Character/isLetter x) (= \_ x))) name)))

  ;; Omit Greek lower case letters
  (def name (str/replace name #"[α-ω]" ""))

  name
  )
