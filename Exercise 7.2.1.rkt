;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 7.2.1|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Definition
;; A zoo-animal is either a:
;; 1.  spiders:
(define-struct spiders (rem-legs tran-space))
;; where rem-legs is a number and tran-space is a number
;; 2. elephants:
(define-struct elephants (tran-space))
;; where tran-space is a number
;; 3. monkeys:
(define-struct monkeys (intelligence tran-space))
;; where intelligence is a symbol and tran-space is a number

(define spidersexample1 (make-spiders 7 9))
(define elephantsexample1 (make-elephants 125000))
(define monkeysexample1 (make-monkeys 'dangerously-smart 1000))

;; transport-zoo-animals : zoo-animal --> ?
;; ?
;; Template
#|
(define (transport-zoo-animals a-zoo-animal ? )
  (cond
   [(...spiders? spiders-rem-legs a-zoo-animal spiders-tran-space a-zoo-animal...)]
   [(...elephants? elephants-tran-space a-zoo-animal...)]
   [(...monkeys? monkeys-intelligence a-zoo-animal monkeys-tran-space a-zoo-animal...)]
|#
;;----------------------------------------------------------------------
;; fits? : zoo-animal number --> boolean
(define (fits? a-zoo-animal cage-volume)
  (cond
   [(spiders? a-zoo-animal) (>= cage-volume (spiders-tran-space a-zoo-animal))]
   [(elephants? a-zoo-animal) (>= cage-volume (elephants-tran-space a-zoo-animal))]
   [(monkeys? a-zoo-animal) (>= cage-volume (monkeys-tran-space a-zoo-animal))]))

;; Tests

(fits? elephantsexample1 100000) "should be" false
(fits? elephantsexample1 135000) "should be" true

