;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.1.4|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; toys is a list:

(define toys-list-example1 (cons 'teddy-bear (cons 'doll empty)))
(define toys-list-example2 (cons 'teddy-bear (cons 'fracker empty)))

;; where all list items are symbols

;; Template
;; fun-with-toys : symbol --> ?
;; ?

#|(define fun-with-toys (a-toys)
  (... first (a-toys)...)
  (... rest (a-toys)...))|#
  
;; contains-2-doll? : symbol --> boolean
;; consume list toys and determine whether one is 'doll

(define (contains-2-doll a-toys)
  (or
  (eq? (first a-toys) 'doll)
  (eq? (first(rest a-toys)) 'doll)))

;; Tests

(contains-2-doll toys-list-example1) "should be" true
(contains-2-doll toys-list-example2) "should be" false