#lang sicp

; Exercise 3.1 - make accumulator

(define (make-accumulator initial)
  (define (sum val)
    (begin (set! initial (+ initial val))
           initial))
  sum)

(define A (make-accumulator 5))
(A 10)
(A 10)
