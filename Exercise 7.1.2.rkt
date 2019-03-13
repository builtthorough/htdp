;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 7.1.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
; A shape is either

; a circle structure:

	   ; (make-circle p s)

; where p is a posn and s is a number; or
; a square structure:

	   ; (make-square p s)
 	  
; where p is a posn and s is a number.

(define-struct square (nw length))
(define-struct circle (center radius))

(define example-square1 (make-square (make-posn 20 30) 30))
(define example-circle1 (make-circle (make-posn 50 80) 30))



(define (perimeter a-shape)
  (cond
    [(square? a-shape) (* (square-length a-shape) 4)]
    [(circle? a-shape) (* (* 2 (circle-radius a-shape)) pi)]))

;----------------------------------------------------------------------------

(define (area a-shape)
  (cond
    [(square? a-shape) (sqr (square-length a-shape))]
    [(circle? a-shape) (sqr (* (circle-radius a-shape) pi))]))

;; Tests

(area example-square1) "Should be" 900
(area example-circle1) "Should be" 8882.64396098


