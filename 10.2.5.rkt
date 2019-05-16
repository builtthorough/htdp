;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.5) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; An inventory is a class of lists that contain
;; 1. empty; or
;; 2. (cons ir inv)
;; where ir is an inventroy record and inv is an inventory

;; An inventory record is a structure (make-ir i p) where
;; 1. i is a symbol
;; 2. p is a number

(define-struct ir (item price))

(define losEx1
  (cons (make-ir 'robot .55)
  (cons (make-ir 'doll .95)
  (cons (make-ir 'rocket 19.5) empty))))

;; Template
;; extract>1 : symbol an-inv
;; consumes an inventory and returns an inventory of items more than one dollar

#|(define extract>1 (an-inv)
  (cond
    [(empty? an-inv) "empty"]
    [else
     (cond
       [(ir-price (first an-inv) 1.00) (cons (first an-inv))]
       [else (extract>1 (rest an-inv)))]))|#


(define (extract>1 an-inv)
  (cond
    [(empty? an-inv) "empty"]
    [else
     (cond
       [(>= (ir-price (first an-inv)) 1.00) (cons (first an-inv) (rest an-inv))]
       [else (extract>1 (rest an-inv))])]))

