;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.2.1|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; A list-of-symbols is either

;; 1. the empty list, empty, or

;; 2. (cons s los) where s is a symbol and los is a list of symbols.

1. empty

empty is a list of symbols, from the data definition.

2. (cons 'ball empty)

Since 'ball is a symbol and empty is a list of symbols,
(cons 'ball empty) is also a list of symbols.

3. (cons 'arrow (cons 'ball empty))

Since 'arrow is a symbol, and (cons 'ball empty) is a list of symbols,
from 2., we know that (cons 'arrow (cons 'ball empty)) is a list of symbols.