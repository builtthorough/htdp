;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 10.1.7|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; lon is list-of-names that:
;; 1. is empty or
;; 2. (cons n lon) contains a symbol and a list of names of toys

(define  lot_example1 (cons 'teddybear (cons 'doll (cons 'starwarsfigure empty))))

;; ty is a symbol

(define ty_example1 'doll)

;; Template


;; recall : list-of-names --> a-list-of-names
;; This function consumes a list of toys and then removes the toy matching an
;; an additional input of a toy

(define (recall lon ty)
  (cond
    [(empty? lon) empty]
    [else (cond
            [(symbol=? ty (first lon)) (recall (rest lon) ty)]
            [else (cons (first lon) (recall (rest lon) ty))])]))

;; Tests

(recall lot_example1 ty_example1)