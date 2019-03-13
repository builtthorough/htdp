;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.6.12|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; A rectangle is a structure:

(define-struct rectangle (ul-corner width height color))

;; where
;;      ul-corner is a posn structure representing a Cartesian point at the upper left of the rectangle
;;      width is a number describing the width of the rectangle
;;      height is a number representing the height of the rectangle
;;      color is a racket library symbol indicating the color of the rectangle

;; DATA EXAMPLE
(define rectangle-example1 (make-rectangle (make-posn 2 3) 30 20 'black))

#|
;; TEMPLATE

;; fun-for-rectanlges : rectangle --> ?
;; Purpose ??

(define fun-for-rectangles (a-rectangle ?)
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

;; clear-a-rectangle : rectangle --> boolean
;; Clears a rectangle from the canvas

(define (clear-a-rectangle a-rectangle)
  (clear-solid-rect
   (rectangle-ul-corner a-rectangle)
   (rectangle-width a-rectangle)
   (rectangle-height a-rectangle)
   (rectangle-color a-rectangle)))

;; draw-and-clear-rectangle : rectangle --> boolean
;; Draws a rectangle, sleeps for a while and then clears that rectangle

(define (draw-and-clear-rectangle a-rectangle)
  (and
   (draw-a-rectangle a-rectangle)
   (sleep-for-a-while 1)
   (clear-a-rectangle a-rectangle)))

;;-------------------------------------------------------------------------------------

;; translate-rectangle : rectangle number --> rectangle moved to the right
;; To move a rectangle to the right by delta number of pixels

(define (translate-rectangle a-rectangle delta)
  (make-rectangle
   (make-posn
    (+ (posn-x (rectangle-ul-corner a-rectangle)) delta)
    (posn-y (rectangle-ul-corner a-rectangle)))
   (rectangle-width a-rectangle)
   (rectangle-height a-rectangle)
   (rectangle-color a-rectangle)))

;;------------------------------------------------------------------------------------


;; move-rectangle : number rectangle  ->  rectangle
;; to draw and clear a rectangle, translate it by delta pixels
(define (move-rectangle delta a-rectangle)
  (cond
    [(draw-and-clear-rectangle a-rectangle) 
     (translate-rectangle a-rectangle delta)]
    [else a-rectangle]))


;; Tests
(start 300 300)

(draw-a-rectangle
 (move-rectangle 10
   (move-rectangle 10
     (move-rectangle 10
       (move-rectangle 10 rectangle-example1)))))

    
