;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.2) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; An inventory is a class of lists that contain
;; 1. empty; or
;; 2. (cons ir inv)
;; where ir is an inventroy record and inv is an inventory

;; An inventory record is a structure (make-ir i p im) where
;; 1. i is a symbol
;; 2. p is a number
;; 3. im is a url address
(define-struct ir (item price image))

(define losEx1
  (cons (make-ir 'robot 20.5 "https://www.htdp.org/2003-09-26/icons/robot.gif")
  (cons (make-ir 'doll 15.5 "https://www.htdp.org/2003-09-26/icons/doll.gif")
  (cons (make-ir 'rocket 19.5 "https://www.htdp.org/2003-09-26/icons/rocket.gif") empty))))

;; Template
;; show-picture : symbol an-inv
;; consumes a symbol, the name of a toy, and matches it with the same toy in the inventory and returns
;; an image of that toy

#|(define show-picture (a-toy an-inv)
  (cond
    [(or (empty? an-inv) (empty? a-toy) "no match")]
    [else
     (... (a-toy (item-ir(first an-inv))) (show-picture (rest an-inv)))]))|#


(define (show-picture a-toy an-inv)
  (cond
    [(or (empty? an-inv) (empty? a-toy)) "no match"]
    [else
     (cond
       [(symbol=? a-toy (ir-item (first an-inv))) (ir-image (first an-inv))]
       [else(show-picture a-toy (rest an-inv))])]))

