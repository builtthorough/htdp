;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.3.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define list-example1 (cons 'bow (cons 'arrow (cons 'ball empty))))

;; contains? : a-symbol list-of-symbols  ->  boolean
;; to determine whether the symbol occurs on a-list-of-symbols

(define (contains? a-list-of-symbols a-symbol)
  (cond
    [(empty? a-list-of-symbols) false]
    [else
     (or
      (symbol=? (first a-list-of-symbols) a-symbol)
      (contains? (rest a-list-of-symbols) a-symbol))]))

;; Tests

(contains? list-example1 'arrow) "should be" true
(contains? list-example1 'frisbee) "should be" false
