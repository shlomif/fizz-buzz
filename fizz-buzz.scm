; An implementation of the famous FizzBuzz exercise in Scheme
; Copyright (C) 2017 NewForester
; Available under MIT Licence terms

; Adapted from https://github.com/NewForester/fpl-scheme/blob/master/scm/fizzbuzz.scm
; Thanks!

; fizzbuzz policy
(define (fizzbuzz nn )
  (modtext nn '(15 5 3) '("FizzBuzz" "Buzz" "Fizz")))

; fizzbuzz mechanics
(define (modtext nn mods names)
  (if (null? mods)
    nn
    (if (= (modulo nn (car mods)) 0)
      (car names)
      (modtext nn (cdr mods) (cdr names)))))

; enumerate (print) function(x) for the range [ii,jj)
(define (enumerate function ii jj)
  (let loop ((ii ii))
    (if (> ii jj)
      #t
      (begin
        (display (function ii))
        (newline)
        (loop (1+ ii))))))

; run fizzbuzz on the range [20,40)
(enumerate fizzbuzz 1 100)

; EOF
