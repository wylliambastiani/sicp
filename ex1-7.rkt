#lang racket

;; Newton Square-Root algorithm
;; improved for very small and large numbers


;; Exercise 1.7: The good-enough? test used in computing square roots 
;; will not be very effective for finding the square roots of very small numbers. 
;; Also, in real computers, arithmetic operations are almost always performed with 
;; limited precision. This makes our test inadequate for very large numbers. Explain these statements,
;; with examples showing how the test fails for small and large numbers. An alternative strategy for 
;; implementing good-enough? is to watch how guess changes from one iteration to the next and to 
;; stop when the change is a very small fraction of the guess. Design a square-root procedure that 
;; uses this kind of end test. Does this work better for small and large numbers?

(define (sqrt n)
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