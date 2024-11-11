#lang sicp

; Exercise 1.42

(define (compose f g)
  (lambda (x) (f (g x))))

(define (square x) (* x x))

((compose square inc) 6)

; Exercise 1.43

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))

(display ((repeated square 2) 5)) (newline)