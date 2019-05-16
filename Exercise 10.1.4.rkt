;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 10.1.4|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; alon is a-list-of-numbers that:
;; 1. is empty or
;; 2. (cons n alon) contains a number and a list of numbers

(define  alon_example1 (cons 1 (cons 2 (cons 3 empty))))

;; exrate is a number

(define exrate_example1 5)

;; Template


;; convert-euro : a-list-of-numbers --> a-list-of-numbers
;; This function converts a list of US dollar amounts and
;; returns a list of Euro dollar amounts per a 1.22 conversion rate

(define (convert-euro alon exrate)
  (cond
    [(empty? alon) empty]
    [else (cons (* exrate (first alon)) (convert-euro (rest alon) exrate))]))

;; Tests

(convert-euro alon_example1 exrate_example1)