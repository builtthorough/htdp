;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.5.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; A list-of-prices is a list:

;; 1. the empty list, empty, or

;; 2. (cons p lop) where p is a number and lop is a list of prices.

(define list-prices-example1 (cons 1.10 (cons .48 (cons .95 empty))))

;; Template


;; dollar-store? : list-of-prices --> boolean
;; Function consumes a list of prices (numbers) and checks whether all of the prices are below 1

#|(define (dollar-store a-lop)
  (cond
    [... (empty? a-lop) ...]
    [else
      (... (first a-lop)...)
      (... (dollar-store (rest a-lop))...]|#


#| (define (dollar-store? a-lop)
  (cond
    [(empty? a-lop) true]
    [else
     (cond
       [(< (first a-lop) 1) (dollar-store? (rest a-lop))]
       [else false])])) |#

;; --------------------------------------


(define (dollar-store? a-lop max-p)
  (cond
    [(empty? a-lop) true]
    [else
     (cond
       [(< (first a-lop) max-p) (dollar-store? (rest a-lop) max-p)]
       [else false])]))

;; Tests

(dollar-store? empty 2)
(dollar-store? (cons .75 (cons 1.95 (cons .25 empty))) 2)
(dollar-store? (cons .15 (cons .05 (cons .25 empty))).2)


