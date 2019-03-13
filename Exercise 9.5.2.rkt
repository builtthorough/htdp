;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.5.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define list-example1 (cons 'bow (cons 'arrow (cons 'ball empty))))

;; how-many-symbols : list-of-symbols  ->  number
;; to sum and return the sum of the symbols on the list

(define (how-many-symbols a-list-of-symbols)
  (cond
    [(empty? a-list-of-symbols) 0]
    [else (+ 1 (how-many-symbols (rest a-list-of-symbols)))]))

;; -------------------------------------------------------------------------

(define num-list-example1 (cons 1 (cons 2 (cons 3 empty))))

;; how-many-numbers : list-of-numbers  ->  number
;; to sum and return the sum of the amount of numbers on the list

(define (how-many-numbers a-list-of-numbers)
  (cond
    [(empty? a-list-of-numbers) 0]
    [else (+ 1 (how-many-numbers (rest a-list-of-numbers)))]))

;; Tests

(how-many-numbers num-list-example1)

