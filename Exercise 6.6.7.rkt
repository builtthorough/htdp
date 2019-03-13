;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.6.7|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; A rectangle is a structure:

(define-struct rectangle (ul-corner width height color))

;; where
;;      ul-corner is a posn structure representing a Cartesian point at the upper left of the rectangle
;;      width is a number describing the width of the rectangle
;;      height is a number representing the height of the rectangle
;;      color is a racket library symbol indicating the color of the rectangle

;; DATA EXAMPLE
;; (make-rectangle (make-posn 2 3) 5 10 'yellow))

#|
;; TEMPLATE

;; fun-for-rectanlges : rectangle --> ?
;; Purpose ??

(define fun-for-circles (a-rectangle ?)
  ...(rectangle-ul-corner a-rectangle)...
  ...(rectangle-width a-rectangle)...
  ...(rectangle-height a-rectangle))...
  ...(rectangle-color rectangle))...
|#



