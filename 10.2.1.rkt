;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; an inventory is either:
;;  - empty, or
;;  - (cons ir inv)
;; where ir is an inventroy record and inv is an inventory

;; An inventory record (ir) is a structure:
;;  (make-ir s n)
;; where s is a symbol and n is a (posnum?)
(define-struct ir (name price))

;; contains-doll? : inventory  ->  boolean
;; to determine whether an-inv contains a record for 'doll
(define (contains-doll? an-inv)
  (cond
    [(empty? an-inv)]
    [(else (symbol=? (ir-toy (first an-inv)) 'doll) (contains-doll?(rest an-inv)))]