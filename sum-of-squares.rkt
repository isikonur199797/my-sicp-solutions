
#lang sicp

(define (biggest n k z)
  (cond
    ((and (>= n k) (>= n z)) n)
    ((and (>= k n ) (>= k z)) k)
    ((and (>= z n ) (>= z k)) z)))

(define (little n k z)
  (cond
    ((and (<= n k) (<= n z)) n)
    ((and (<= k n) (<= k z)) k)
    ((and (<= z n) (<= z k)) z)))

(define (second-biggest n k z)
  (cond
    ((and (< n (biggest n k z)) (> n (little n k z))) n)
    ((and (< k (biggest n k z)) (> k (little n k z))) k)
    ((and (< z (biggest n k z)) (> z (little n k z))) z)
    ((and (= n k) (< n (biggest n k z))) n)
    ((and (= k z) (< k (biggest n k z))) k)
    ((and (= n z) (< n (biggest n k z))) n)
    ((and (= n k ) (= k z)) n)))


(define (square n)
  (* n n))

(define (sum-of-squares n k z)
  (+ (square (biggest n k z)) (square (second-biggest n k z))))
