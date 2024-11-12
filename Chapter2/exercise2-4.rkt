#lang sicp

(define (cons x y)
  (lambda (m) (m x y)))

; (cons x y) returns a lambda that takes in m, that applys m to x and y.

(define (car z)
  (z (lambda (p q) p)))

(define my-pair (cons 4 6))

(cons 4 6) ; is lambda that takes procedure that will be applied to x y

(car my-pair) ; call my-pair procedure with a lambda that returns the first parameter

(define (cdr z)
  (z (lambda (p q) q)))

(cdr my-pair)

