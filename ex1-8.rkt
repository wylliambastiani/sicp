#lang racket

;; Exercise 1.8: Newton’s method for cube roots is based on the 
;; fact that if y is an approximation to the cube root of x, 
;; then a better approximation is given by the value x/y2+2y3.
;; Use this formula to implement a cube-root procedure analogous to the square-root procedure.

(define (cube-root n)

  (define (square x)
    (* x x))

  (define (average x y)
    (/ (+ x y) 3))

  (define (good-enough? guess)
    (= (improve guess) guess))

  (define (improve guess)
    (average (/ n (square guess)) (* 2 guess)))

  (define (compute guess)
    (if (good-enough? guess)
      guess
      (compute (improve guess))))
  
  (compute 1.0))

(cube-root 27)
(cube-root 64)
(cube-root 125)