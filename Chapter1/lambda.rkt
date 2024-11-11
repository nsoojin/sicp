#lang sicp

;(define (plus4 x) (+ x 4))

(define plus4 (lambda (x) (+ x 4)))

(plus4 5)



(define (f x y)
  (define (f-helper a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
  (f-helper (+ 1 (* x y))
            (- 1 y)))

(define (f x y)
  ((lambda (a b)
     (+ (* x (square a))
       (* y b)
       (* a b)))
   (+ 1 (* x y))
   (- 1 y)))

; this lambda construct is so useful, there is a special form called let

(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))

; no new mechanism is required in the interpreter in order to provide local variables.



