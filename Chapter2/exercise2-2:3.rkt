#lang sicp

; Exercise 2.2

(define (make-segment a b)
  (cons a b))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment a)  
  (make-point (/ (+ (x-point (start-segment a)) (x-point (end-segment a))) 2)
              (/ (+ (y-point (start-segment a)) (y-point (end-segment a))) 2)))

(print-point (midpoint-segment
              (make-segment
               (make-point 0 10)
               (make-point 2 12))))

; Exercise 2.3 - Create Rectangle, calculate area & perimeter



