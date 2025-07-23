(ns elyses-destructured-enchantments)

(defn first-card
  "Returns the first card from deck."
  [deck]
  (let [[primary] deck] primary)
)

(defn second-card
  "Returns the second card from deck."
  [deck]
  (let [[_ secondary] deck] secondary)
)

(defn swap-top-two-cards
  "Returns the deck with first two items reversed."
  [deck]
  (let [[primary secondary] deck]
    (concat [secondary primary] (subvec deck 2)))
)

(defn discard-top-card
  "Returns a sequence containing the first card and
   a sequence of the remaining cards in the deck."
  [deck]
  (let [[primary & others] deck]
    (if (= (count others) 0) [primary nil]
    [primary (into [] others)]))
)

(def face-cards
  ["jack" "queen" "king"])

(defn insert-face-cards
  "Returns the deck with face cards between its head and tail."
  [deck]
  (cond (= (count deck) 0) face-cards
        (= (count deck) 1) (concat deck face-cards)
        :else
        (let [[primary & others] deck] (flatten [primary face-cards others])))
)
