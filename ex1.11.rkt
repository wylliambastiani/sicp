;; Exercise 1.11: A function f is defined by the rule that 
;; f(n)=n if n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3. 
;; Write a procedure that computes f by means of a recursive process.
;; Write a procedure that computes f by means of an iterative process.

#lang racket

(define (rec n)
  (if (< n 3)
    n
    (+
      (rec (- n 1))
      (* 2 (rec (- n 2)))
      (* 3 (rec (- n 3))))))

(define (iter n)
  (define (iter-i a b c count)
    (cond ((< n 3) n)
          ((= count 0) a)  
          (else (iter-i (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
  (iter-i 2 1 0 (- n 2)))

(rec 5)
(rec 6)

(iter 5)
(iter 6)