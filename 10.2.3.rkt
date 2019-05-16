;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; An inventory is a class of lists that contain
;; 1. empty; or
;; 2. (cons ir inv)
;; where ir is an inventroy record and inv is an inventory

;; An inventory record is a structure (make-ir i p) where
;; 1. i is a symbol
;; 2. p is a number
(define-struct ir (item price))

(define losEx1
  (cons (make-ir 'robot 20.5)
  (cons (make-ir 'doll 15.5)
  (cons (make-ir 'rocket 19.5) empty))))

;; Template
;; price-of : symbol an-inv
;; consumes a symbol, the name of a toy, and matches it with the same toy in the inventory and returns
;; the price of that toy

#|(define price-of (a-toy an-inv)
  (cond
    [(or (empty? an-inv) (empty? a-toy) "no match")]
    [else
     (... (a-toy (item-ir(first an-inv))) (price-of (rest an-inv)))]))|#


(define (price-of a-toy an-inv)
  (cond
    [(or (empty? an-inv) (empty? a-toy)) "no match"]
    [else
     (cond
       [(symbol=? a-toy (ir-item (first an-inv))) (ir-price (first an-inv))]
       [else (price-of a-toy (rest an-inv))])]))

