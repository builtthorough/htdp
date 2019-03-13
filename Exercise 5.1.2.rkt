;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 5.1.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; check-guess : number number -->  symbol
;; To facilitate a number guessing game by responding to one players guess at another players selected number between 0-99999 indicating whether the guess is too small, perfect or too large.

(define (check-guess guess target)
  (cond
    ((< guess target) 'TooSmall)
    ((= guess target) 'Perfect)
    ((> guess target)'TooLarge)))

(check-guess 3 1) "should be" 'TooLarge
(check-guess 1 1) "should be" 'Perfect
(check-guess 1 3) "should be" 'TooSmall