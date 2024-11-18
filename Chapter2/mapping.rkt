#lang sicp

(define (scale-list items factor)
  (if (null? items)
      nil
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

(scale-list (list 1 2 3 4 5) 10)

(define (mymap proc items)
  (if null? items)
  nil
  (cons (proc (car items))
        (map proc (cdr items))))

(mymap abs (list -10 2.5 -11.6 17))
(mymap (lambda (x) (* x x)) (list 1 2 3 4))


; Exercise 2.21 - Implement two different square-list

(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (square-list2 items)
  (map (lambda (x) (* x x)) items))

(square-list2 (list 1 2 3 4 5))

; Exercise 2.23 - Implement For-each

(define (for-each proc items)
  (cond ((null? items) true)
        (else
         (proc (car items))
         (for-each proc (cdr items)))))

(for-each (lambda (x)
            (newline)
            (display x))
            (list 57 321 88))

