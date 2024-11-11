#lang sicp

(define (double f)
  (lambda (y) (f (f y))))


((double inc) 3)

(((double (double double)) inc) 5)

; (double double) = 4 times
; (double (double double)) = 4x4 = 16 times
