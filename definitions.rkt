#lang racket

(define x 3)

(define y (+ x 1))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (square x) (* x x))

(write (sum-of-squares x y))