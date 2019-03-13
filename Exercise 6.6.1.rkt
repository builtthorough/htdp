;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.6.1|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; teachpack: draw.ss

;; DATA DEFINITIONS

;; A posn is a structure:

(define-posn (pos-x pos-y))

;; that consumes two numbers to form a Cartesian point

;; A circle is a structure:

(define-struct circle (center radius color))

;; where
;;      center is a posn structure representing a Cartesian point center of the circle
;;      number is a number describing the radius of the circle
;;      symbol is a symbol representing the color of the circle

;; DATA EXAMPLE
;; (make-circle (make-posn 2 3) 5 yellow))

#|
;; TEMPLATE

;; fun-for-circles : circle --> ?
;; Purpose ??

(define fun-for-circles (a-circle)
  ...(circle-center a-circle)...
  ...(circle-radius a-circle)...
  ...(circle-color a-circle))...
|#
                