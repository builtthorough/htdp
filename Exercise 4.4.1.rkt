;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 4.4.1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; interest : number -> number
;; calculates the amount of interest for amount dollars.

(define (interest amount)
  (cond
    [(<= amount 1000) (* amount .04)]
    [(<= amount 5000) (* amount .045)]
    [(> amount 5000) (* amount .05)]))

; textbook example uses fractions below

(define (interesting d)
  (cond
    [(<= d 1000) (* d 4/100)]
    [(<= d 5000) (* d 45/1000)]
    [(> d 5000) (* d 5/100)]))