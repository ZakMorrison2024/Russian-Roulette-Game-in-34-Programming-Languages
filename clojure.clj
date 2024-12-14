(ns russian-roulette.core
  (:require [clojure.string :as str]))

(defn russian-roulette []
  (let [chambers (shuffle (concat (repeat 5 false) [true]))]  ;; 1 chamber with a bullet
    (println "Welcome to Russian Roulette!")
    (read-line)  ;; Wait for Enter key
    (if (first chambers)
      (println "Bang! You're dead!")
      (println "Click. You're safe... for now."))))

(defn -main []
  (russian-roulette))
