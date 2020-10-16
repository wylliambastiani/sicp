;; Exercise 1.2: Translate the following expression into prefix form:
;; 5+4+(2−(3−(6+45))) / 3(6−2)(2−7)

(/ (+ 4 5 6 (/ 4 5) (- 2 3)) 
    (* 3 (- 6 2) (- 2 7))) 