;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 4.4.2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; tax: number --> number
; consumes gross pay and returns amount of tax owed

(define (tax gp)
  (cond
   [(<= gp 240) 0]
   [(<= gp 480) (* gp .15)]
   [(> gp 480) (* gp .28)]))