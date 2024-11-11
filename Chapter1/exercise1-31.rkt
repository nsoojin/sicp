#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))


(define (product-integers a b)
  (product identity a inc b))

(product-integers 1 5) ; 120

(define (factorial n)
  (product-integers 1 n))

(factorial 5) ; 120

(define (iterative-product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

