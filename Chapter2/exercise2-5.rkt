#lang sicp

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car x)
  (define (car-iter n count)
    (if (= 0 (remainder n 2))
        (car-iter (/ n 2) (+ 1 count))
        count))
  (car-iter x 0))

(define (cdr x)
  (define (cdr-iter n count)
    (if (= 0 (remainder n 3))
        (cdr-iter (/ n 3) (+ 1 count))
        count))
  (cdr-iter x 0))



(cons 3 18)
(car (cons 3 18))
(cdr (cons 3 18))