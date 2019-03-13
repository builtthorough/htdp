;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 5.1.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp")) #f)))
;; digit-combine : number number number --> number
;; To produce a number by combining the three digits

(define (digit-combine onesnumber tensnumber hundredsnumber)
  (+ onesnumber (* tensnumber 10) (* hundredsnumber 100)))

(digit-combine 1 2 3) "should be" 123
(digit-combine 3 2 3) "should be" 323

;; check-guess : number number -->  symbol
;; To facilitate a number guessing game by responding to one players guess at another players selected number between 0-99999 indicating whether the guess is too small, perfect or too large.

(define (check-guess guess target)
  (cond
    ((< guess target) 'TooSmall)
    ((= guess target) 'Perfect)
    ((> guess target)'TooLarge)))

(check-guess 3 1) "should be" 'TooLarge
(check-guess 1 1) "should be" 'Perfect
(check-guess 1 3) "should be" 'TooSmall22

;; check-guess3 : number number number number -->  symbol
;; To facilitate a number guessing game by responding to one players guess at another players selected
;; three digits to be combined to be a number between 0-99999 indicating whether the guess is too small, perfect or too large.

;; EXAMPLES
;; Ones digit 1, tens digit 2, hundreds digit 3 and target 500 
;; produces 'TooSmall
;; Ones digit 1, tens digit 2, hundreds digit 3 and target 100 
;; produces 'TooLarge
;; Ones digit 1, tens digit 2, hundreds digit 3 and target 321 
;; produces 'Perfect

(define (check-guess3 onesnumber tensnumber hundredsnumber target)
         (check-guess (digit-combine onesnumber tensnumber hundredsnumber) target))

(check-guess3 2 3 4 1) "should be" 'TooLarge
(check-guess3 1 3 3 133) "should be" 'Perfect
(check-guess3 1 1 1 300) "should be" 'TooSmall




