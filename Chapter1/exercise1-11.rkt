#lang sicp

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (f-iter n)
  (define (f-loop n-1 n-2 n-3 nth)
    (if (= n nth)
       n-1
       (f-loop (+ n-1 (* 2 n-2) (* 3 n-3))
               n-1
               n-2
               (+ 1 nth))))
  (if (< n 3)
      n
     (f-loop 2 1 0 2)))

  

(f 5)
(f-iter 5)