;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9.5.6|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; An Inventory-beg-mnth is a list:

;; 1. the empty list, empty, or

;; 2. (cons p ibm) where p is a number and ibm is a list of prices.

(define  IBM (cons 1 (cons 2 (cons 3 empty))))

;; An Inventory-end-mnth is a list:

;; 1. the empty list, empty, or

;; 2. (cons p iem) where p is a number and ibm is a list of prices.

(define  IEM (cons 2 (cons 3 (cons 3 empty))))

;; Template


;; delta : Inventory-beg-mnth Inventory-end-mnth --> symbol
;; Function consumes two list of prices (numbers) and checks whether inventory has increased or decreased

#|(define (delta a-ibm a-iem)
  (... (first a-lop) ...) (... (first a-ibm) ...)
          (... (delta (rest a-ibm) (rest a-iem))...)]|#

(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums) (sum (rest a-list-of-nums)))]))


(define (delta a-ibm a-iem)
  (cond
    [(or
     (empty? a-ibm) (empty? a-ibm)) 0]
    [else
     (- (sum a-ibm)(sum a-iem))]))


;; Tests

(delta IBM IEM)
