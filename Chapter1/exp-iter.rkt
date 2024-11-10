#lang sicp

(define (exp b n)
  (exp-iter b n 1))

(define (exp-iter b counter product)
  (if (= counter 0)
      product
      (exp-iter b (- counter 1) (* b product))))
  