#lang racket

;; Newton Cube-Root algorithm

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