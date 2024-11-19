#lang sicp

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(filter (lambda (x) (odd? x)) '(1 2 3 4 5 6 7 8 9 10))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(accumulate + 0 '(1 2 3 4 5))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low
            (enumerate-interval (+ low 1) high))))

(enumerate-interval 2 7)

(define (enumerate-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))

(enumerate-tree (list 1 (list 2 (list 3 4)) 5))

(define (square x) (* x x))

; Reformulate sum-odd-squares and even-fibs

(define (sum-odd-squares tree)
  (accumulate + 0
              (map square (filter odd? (enumerate-tree tree)))))


(sum-odd-squares (list 1 (list 2 (list 4 5) 1)))

(define (even-fibs n)
  (accumulate
   cons ()
   (filter even? (map fib (enumerate-interval 0 n)))))

; Exercise 2.33

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence)))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y) 0 sequence)))

; Exercise 2.34

(define (horner-eval x coefficient-seq)
  (accumulate (lambda (coef higher-terms) (+ coef (* x higher-terms))) 0 coefficient-seq))

; Exercise 2.35

(define (count-leaves t)
  (accumulate + 0 (map (lambda (x)
                         (if (pair? x)
                             (count-leaves x)
                             1))
                       t)))


   