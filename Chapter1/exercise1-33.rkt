#lang sicp

(define (filtered-accumulate filter combiner null-value term a next b)
  (if (or (> a b) (not (filter a)))
      null-value
      (combiner (term a)
                (filtered-accumulate filter combiner null-value term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-of-squares-prime a b)
  (filtered-accumulate prime? + 0 square a inc b))
      