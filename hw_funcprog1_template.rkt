;;;
; CSE240 Functional Programming 1 Homework
; This assignment involves pracicing various expressions and procedures in Scheme.
; 
; For the first assignment, we are providing the default header so you can see how it
; looks in Scheme. For future assignments, you will need to add it yourself.
;
; Completion time: 8 hours
;
; @author Melissa Mandyck, Acuna code used
; @version February 9, 2024
;;;

;; 1)Using DrRacket to compute the following expressions.
; 1.1
(define result1.1 (+ 5 (+ 9 (- 2))))
(display "\n 1.1 : ") 
(display result1.1)
(newline)

; 1.2
(define result1.2 (- (* 5 (+ 6 12 5)) 25))
(display "\n 1.2 : ") 
(display result1.2)
(newline)

; 1.3
(define result1.3 (* 7 (+ (- 5 (* 1 3)) (* 2 4))))
(display "\n 1.3 : ") 
(display result1.3)
(newline)

; 1.4
(define result1.4 (* 3 (+ 4 (/ (+ (* 6 6) (* 6 6)) (+ 10 2)))))
(display "\n 1.4 : ") 
(display result1.4)
(newline)

; 1.5
(define result1.5
(+ (/ (/ (/ (/ (/ (+ 4 6) (* 6 4)) 2) 2) (- 5)) 2)
   (+ (/ (+ (/ (+ (* 4 5) (* 5 4)) 2) (* 4 5))))))
(display "\n 1.4 : ") 
(display result1.5)
(newline)

; Display the result
(display result1.5)
(display "\n")
(display "\n Q2 : "); Q2: Define a procedure “add” that takes two parameters and returns the sum of them

(define(sum a b) (+ a b));
(sum 2 5);
  

(display "\n Q3 : "); Q3: Define a recursive procedure called “square” 
(define(sum a b) (+ a b));

(define (compute-square x) ;step 1
  (cond ;step 2
    ((< x 0) (display (string-append "The square of " (number->string x) " is " (number->string (* x x)))))
    ((= x 0) (display "\n The square of 0 is 0."))
    (else (display (string-append "The square of " (number->string x) " is " (number->string (* x x)) "\n")))))
; My Examples:
(compute-square 5) ; Print "The square of 5 is 25."
(compute-square -7) ; Print "The square of -7 is 49."
(compute-square 0) ; Print "The square of 0 is 0."
  
(display "\n")
(display "\n Q4 : "); Q4: Define a procedure “read-for-square” 
(define (Square x)
  (* x x))

(define (read-for-square)
  (display "\n Enter a number: ") ; requests user input number
  (flush-output)
  (let ((input (read)))
    (display "Result: ") ; displays result based on user input
    (display (Square input))
    (newline)))

(read-for-square); read-for-square function

(display "\n Q5 : "); Q5
(display "\n")
(define (diff-squares x y)
  (let* ((square-x (* x x))
         (square-y (* y y))
         (difference (- square-x square-y)))
    (if (< difference 0)
        (abs difference) ; Return absolute value
        difference)))    ; (otherwise) Return difference
(display "Result: ") ; displays result based on user input
(diff-squares 5 10) ; Output should be 75

(display "\n Q6 : "); Q6
(display "\n")
(define (sum-odds max)
(cond ((= max 1) 1)
      ((= (modulo max 2) 1) (+ max (sum-odds (- max 2))))
      (else (sum-odds (- max 1))))) ; recursion
(display "Result: ") ; displays result based on user input
(display (sum-odds 10)) ; My example verify code
(display "\n")

(display "\n Q7 : "); Q7
(display "\n")
(define (fib n)
  (cond
    ((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib (- n 1)) (fib (- n 2))))))

; Example usage:
(display "Result: ")
(display (fib 0)) ; My example Output: 0
(display "\n")
(display "Result: ")
(display (fib 9)) ; My example Output: 34