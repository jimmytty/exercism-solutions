(ns interest-is-interesting)

(defn interest-rate
  "Returns the interest rate based on the specified balance."
  [balance]
  (cond (< balance    0M) -3.213
        (< balance 1000M)  0.5
        (< balance 5000M)  1.621
        :else              2.475 ))

(defn annual-balance-update
  "Returns the annual balance update, taking into account the interest rate."
  [balance]
  (+ balance (* balance (/ (abs(bigdec(interest-rate balance))) 100))))

(defn amount-to-donate
  "Returns how much money to donate based on the balance and the tax-free percentage."
  [balance tax-free-percentage]
  (int(*(* balance (/ tax-free-percentage 100)) 2)))
