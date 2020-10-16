#lang racket

;; Newton Square-Root algorithm
;; improved for very small and large numbers


(define (sqrt n)
  (define (square guess)
    (* guess guess))

  (define (average x y)
    (/ (+ x y) 2))

  (define (good-enough? guess)
    (= (improve guess) guess))

  (define (improve guess)
    (average (/ n guess) guess))

  (define (compute guess)
    (if (good-enough? guess)
      guess
      (compute (improve guess))))
  
  (compute 1.0))

(sqrt 0.0001)
(sqrt 4)
(sqrt 9)
(sqrt 36)
(sqrt 100000000000000000000000000)