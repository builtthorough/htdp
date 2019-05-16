;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.5.7|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; An Toy-L is a list comprised of:

;; 1. the empty list, empty, or

;; 2. (cons p Toy-L) where p is a number and Toy-L is a list of prices.

(define  Toy-Lexample (cons 1 (cons 2 (cons 3 empty))))
(define  Toy-Lexample2 empty)


(define (how-many a-list-of-numbers)
  (cond
    [(empty? a-list-of-numbers) 0]
    [else (+ (how-many (rest a-list-of-numbers)) 1)]))

(define (sum a-Toy-L)
  (cond
    [(empty? a-Toy-L) 0]
    [else (+ (first a-Toy-L) (sum (rest a-Toy-L)))]))


;; Template


;; av-price-toy : Toy-L --> number
;; Function consumes a list of toy prices and returns the average price
;; of a toy within that list

#|(define (av-price-toy a-Toy-L)
  (... (first a-Toy-L) ...)
  (... (first a-Toy-L) (av-price-toy (rest a-Toy-L)) ...))
|#

(define (checked-av-price-toy a-Toy-L)
  (cond
    [(empty? a-Toy-L)(error 'checked-av-price-toy "list is empty")]
    [else (/ (sum a-Toy-L) (how-many a-Toy-L))]))


;; Tests

(checked-av-price-toy Toy-Lexample)


(checked-av-price-toy Toy-Lexample2)

