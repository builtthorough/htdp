;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.3.3|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;;Exercise 6.3.3.   Provide a structure definition that represents an airforce's
;;jet fighters. Assume that a fighter has four essential properties: designation
;;('f22, 'tornado, or 'mig22), acceleration, top-speed, and range. Then develop
;;the function within-range. The function consumes a fighter record and the
;;distance of a target from the (fighter's) base. It determines whether the
;;fighter can reach the intended target. Also develop the function reduce-range.
;;The function consumes a fighter record and produces one in which the range field
;;is reduced to 80% of the original value.

;; A fighter is a structure:
;; (make-fighter symbol number number number)

(define-struct fighter (designation acceleration top-speed range))

; within-range : structure number --> boolean
; to consumer a fighter structure and a target distance, compare the two and determine whether the fighter
; can reach the target

(define (within-range a-fighter target-distance)
  (>= (fighter-range a-fighter) target-distance))

;; tests

(within-range (make-fighter 'Superblaster5000 90 1600 800) 400) "should be" true
(within-range (make-fighter 'Superblaster5000 90 1600 500) 800) "should be" false

 
;------------------------------------------------------------------------------------------------

;; reduce-range : a-fighter --> a-fighter
;; to consumer a fighter profile and like a-fighter and return that profile with the range reduced by 80%

(define (reduce-range a-fighter)
  (make-fighter (fighter-designation a-fighter)
                 (fighter-acceleration a-fighter)
                 (fighter-top-speed a-fighter)
                 (* (fighter-range a-fighter) .8)))

;tests

(reduce-range (make-fighter 'Superblaster5000 90 1600 800))


 