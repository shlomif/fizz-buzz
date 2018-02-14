; An implementation of the famous FizzBuzz exercise in Common Lisp
; based on:

; An implementation of the famous FizzBuzz exercise in Scheme
; Copyright (C) 2017 NewForester
; Available under MIT Licence terms

; Adapted from https://github.com/NewForester/fpl-scheme/blob/master/scm/fizzbuzz.scm
; Thanks!

; fizzbuzz policy
(defun fizzbuzz ( nn )
  (modtext nn '(15 5 3) '("FizzBuzz" "Buzz" "Fizz")))

; fizzbuzz mechanics
(defun modtext (nn mods names)
  (if (null mods)
    nn
    (if (= (mod nn (car mods)) 0)
      (car names)
      (modtext nn (cdr mods) (cdr names)))))

; enumerate (print) function(x) for the range [ii,jj)
(defun enumerate (cb ii jj)
  (loop for i from ii to jj
        do (format t "~A~%" (funcall cb i))))

; run fizzbuzz on the range [20,40)
(enumerate #'fizzbuzz 1 100)
