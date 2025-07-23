(ns armstrong-numbers)

(defn getDigits [n]
  (if (< n 10)
    [n]
    (conj (getDigits (quot n 10)) (rem n 10))))

(defn armstrong? [num]
  (let [digits (getDigits num)]
    (= (apply + (map #(apply * (repeat (count digits) %)) digits)) num)))
