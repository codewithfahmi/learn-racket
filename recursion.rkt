#lang racket

(define (fact-helper n acc)
  (cond
    [(= n 1) acc]
    [else (fact-helper (- n 1) (* n acc))]))

(define (fact n) (fact-helper n 1))

(write (fact 10))