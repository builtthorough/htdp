;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 7.1.1|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(number? (make-posn 2 3)) false

(number? (+ 12 10)) true

(posn? 23) false

(posn? (make-posn 23 3)) true

(star? (make-posn 23 3) false