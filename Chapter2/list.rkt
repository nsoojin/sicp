#lang sicp

(define one-through-four (list 1 2 3 4))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(list-ref one-through-four 3)

(define (append list1 list2)
  (if (null? list)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (length items)
  (define (length-iter a count)
    (if (null? a) count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))


; Exercise 2.17

(define my-list (list 1 2 3 4 5 6 7 8 9 10))

(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))

(last-pair one-through-four)
(last-pair my-list)

; Exercise 2.18

(define (reverse items)
  (define (iter original reversed)
    (if (null? original)
        reversed
        (iter (cdr original) (cons (car original) reversed))))
  (iter items (list)))

(reverse my-list)

; Exercise 2.20
