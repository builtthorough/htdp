;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.5.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; The compound data time is a structure :

(define-struct time (hours minutes seconds))

;; that is made up of numbers data
;;(make-time (hours minutes seconds))   

(make-time 11 30 12)

;; since-midnight : time numbers --> number
;; A program that consumes time structure and returns the numbers of seconds since midnight

;; Examples

;; (since-midnight (make-time 12 30 2))

;; expected value:

45002

;; Template

;;(define (since-midnight a-time --> seconds)
  ;;...(time-hours a-time)...
  ;;...(time-minutes a-time)...
  ;;...(time-seconds a-time))...

(define (since-midnight a-time)
  (+ (* (time-hours a-time) 3600)
  (* (time-minutes a-time) 60)
  (time-seconds a-time)))

;; tests

(since-midnight (make-time 12 30 2)) "should be" 45002