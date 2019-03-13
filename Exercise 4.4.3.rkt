;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 4.4.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; pay-back : number --> number
;; computes amount cashback depending on amount charged

;; Examples
;; $400 gets $1
;; $1400 gets $5.75
;; $2000 gets $10.00
;; $2600 gets $14.75

(define (pay-back charges)
  (cond
    [(<= charges 500) (calc-sub500-payback charges)]
    [(and (<= charges 1500) (calc-500-1500-payback charges))]
    [(and (<= charges 2500) (calc-1500-2500-payback charges))]
    [(else (> charges 2500) (* charges .01))]))


;; calc-sub500-payback : number --> number
;; calculates payback on charges below $500

(define (calc-sub500-payback charges)
  (cond
    [* charges .0025]))

;; calc-500-1500-payback : number --> number
;; calculates payback on charges below $1500

(define (calc-500-1500-payback charges)
  (cond
    [* charges .0050]))

;; calc-1500-2500-payback : number --> number
;; calculates payback on charges below $2500

(define (calc-1500-2500-payback charges)
  (cond
    [* charges .0075]))

