;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.1.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(cons 10 (cons 20 (cons 5 empty)))
;; What are the values of the following expressions?

(rest l) "should be" (cons 20 (cons 5 empty))

(first (rest l)) "should be" 20

(rest (rest l)) "should be" (cons 5 empty)

(first (rest (rest l))) "should be" 5

(rest (rest (rest l))) "should be" empty