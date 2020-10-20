  
#lang racket

;; Write a procedure that computes elements of
;; Pascal’s triangle by means of a recursive process.

(define (pascal row col)
  (if (or (= col 1) (= col row))
    1
    (+ 
      (pascal (- row 1) (- col 1))
      (pascal (- row 1) col))
    ))

(pascal 2 2) ;; = 1
(pascal 3 2) ;; = 2
(pascal 5 5) ;; = 1
(pascal 5 3) ;; = 6
(pascal 7 3) ;; = 15
(pascal 7 4) ;; = 20
(pascal 48 48) ;; = 1
(pascal 30 17) ;; = 67863915
