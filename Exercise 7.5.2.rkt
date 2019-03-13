;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 7.5.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
; distance-to-0: structure --> number
; compute distance of cartesian point from center
(define (distance-to-0 a-posn)
  (sqrt
   (+ (sqr (posn-x a-posn))
      (sqr (posn-y a-posn)))))

(define (checked-distance-to-0 a-posn)
  (cond
    [(posn? a-posn)
     (sqrt
      (+ (sqr (posn-x a-posn))
         (sqr (posn-y a-posn))))]
    [else (error 'checked-distance-to-0 "number expected biznatch")]))

;;--------------------------------------------------------------------
;; Data Definition:
(define-struct circle (center radius))
(define-struct square (nw length))
;; A shape is either
;; 1. a structure: (make-circle p s)
;;    where p is a posn, s a number;
;; 2. a structure: (make-square p s)
;;    where p is a posn, s a number.


;; perimeter : shape  ->  number
;; to compute the perimeter of a-shape
(define (checked-perimeter a-shape)
  (cond
    [(circle? a-shape)
     (* (* 2 (circle-radius a-shape)) pi)]
    [(square? a-shape)
     (* (square-length a-shape) 4)]
    [else (error 'checkedperimeter "Expected a shape dude")]))

;; Tests
(checked-perimeter (make-circle (make-posn 6 7) 7))
(checked-perimeter 'a-shape)
