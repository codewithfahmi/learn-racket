#lang racket

(write (= 2 2))           ; #t
(newline)
(write (= 3 2))           ; #f
(newline)
(write (= (sqrt 4) 2))    ; #t
(newline)
(write (= 2 2.0))         ; #t
(newline)
(write (= 2 2 2))         ; #t
(newline)
(write (= 2 2 3))         ; #f
(newline)
; (write (= "Pynchon" "DeLillo"))
; (newline)
#|
  line 23 will produce an error :

  =: contract violation
    expected: number?
    given: "Pynchon"
    context...:
    body of "/home/###/###/learn-racket/conditional-expressions.rkt"
|#
(write (equal? 2 2))        ; #t
(newline)
(write (equal? "Wallace" "Wallace")) ; #t
(newline)
(write (equal? 2 "Joyce"))  ; #f
(newline)
(write (> 2 3))             ; #f
(newline)
(write (< 3 4))             ; #t
(newline)
(write (>= 2 2 3))          ; #f
(newline)
(write (even? 42))          ; #t
(newline)
(write (not (even? 43)))    ; #t
(newline)
(write (exact? (sqrt 4)))   ; #t
(newline)
(write (exact? (sqrt 5)))   ; #f
(newline)
(write (boolean? (= 3 5)))  ; #t
(newline)
(write (number? (+ 3 5)))   ; #t
(newline)
(write (string? "Hawk"))    ; #t
(newline)
(write (string<=? "hawk" "handsaw"))    ; #f
(newline)
(define x -2)
(write (if (> x (sqrt 5)) "greater" "not greater"))
(newline)
(write (if (positive? x) x (- x)))
(newline)
(define (abs x)
  (cond
    [(> x 0) x]
    [else    (- x)]))
(write (abs 5))
(newline)
(write (abs 3))
(newline)
(define (f x) (if (positive? x) x #f))
(write (and (> 3 4) (< 3 4)))
(newline)
(write (and (f 3) (f 4)))
(newline)
(write (and (f -2) (f 3)))
(newline)
(write (or (f -2) (f 3) (f 4)))
(newline)