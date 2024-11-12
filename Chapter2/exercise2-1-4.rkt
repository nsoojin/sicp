#lang sicp

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y))) (p3 (* (upper-bound x) (lower-bound y))) (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))


(define (error-div-interval x y)
  (mul-interval
   x
   (make-interval (/ 1.0 (upper-bound y))
                  (/ 1.0 (lower-bound y)))))

(define (make-interval a b) (cons a b))

; Exercise 2.7

(define (lower-bound x)
  (min (car x) (cdr x)))

(define (upper-bound x)
  (max (car x) (cdr x)))

; Exercise 2.8

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))


; Exercise 2.10

(define (div-interval x y)
  (define (spans-zero? x)
    (or
         (= (upper-bound x) 0)
         (= (lower-bound x) 0)
         (and (< (lower-bound x) 0) (> (upper-bound x) 0))))
  (if (or (spans-zero? x) (spans-zero? y))
      (error "One or more interval spans zero")
      (mul-interval
       x
       (make-interval (/ 1.0 (upper-bound y))
                  (/ 1.0 (lower-bound y))))))


(div-interval (make-interval 1 2) (make-interval -5 -2))