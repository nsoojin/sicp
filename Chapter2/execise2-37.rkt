#lang sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))



; Exercise 2.37

(define (dot-product v w)
  (accumulate + 0 (map * v w)))
