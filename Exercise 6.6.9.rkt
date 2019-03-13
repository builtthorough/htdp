;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.6.9|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;;------------------------------------------------------------------------------------

;; draw-a-rectangle : rectangle --> boolean
;; function consumes the rectangle structure and produces true/draws a rectangle

(define (draw-a-rectangle a-rectangle)
  (draw-solid-rect
   (rectangle-ul-corner a-rectangle)
   (rectangle-width a-rectangle)
   (rectangle-height a-rectangle)
   (rectangle-color a-rectangle)))

;;------------------------------------------------------------------------------------

;; in-rectangle? : rectangle posn --> boolean
;; To consume compound data structure rectangle and return boolean confirming whether or not a pixel
;; is located inside rectangle

(define (in-rectangle? a-rectangle a-posn)
  (and (<= (posn-x (rectangle-ul-corner a-rectangle))
           (posn-x a-posn)
           (+ (posn-x (rectangle-ul-corner a-rectangle))
              (rectangle-width a-rectangle)))
       (<= (posn-y (rectangle-ul-corner a-rectangle))
           (posn-y a-posn)
           (+ (posn-y (rectangle-corner a-rectangle))
              (rectangle-height a-rectangle)))))
   

;; Tests

(in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 4 4)) "should be" true
(in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 8 6)) "should be" false

