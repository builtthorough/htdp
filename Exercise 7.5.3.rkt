;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 7.5.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct vec (x y))
;; A speed-vector (vec) is a structure: 
;;  (make-vec x y)  
;; where both x and y are positive numbers.

(define (checked-make-vec a-vec)
  (cond
   [(and
     (number? (vec-x a-vec)) (> (vec-x a-vec) 0)
     (number? (vec-y a-vec)) (> (vec-y a-vec) 0)) (make-vec (vec-x a-vec) (vec-y a-vec))]
   [else (error 'checked-make-vec "wassup um no")]))

;; Tests

(checked-make-vec (make-vec 8 9))
(checked-make-vec (make-vec 8 -9))


