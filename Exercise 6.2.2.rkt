;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.2.2|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; draw bulb with red light turned on

(start 50 160)
(draw-solid-disk (make-posn 25 30) 20 'red)
(draw-circle (make-posn 25 80) 20 'yellow)
(draw-circle (make-posn 25 130) 20 'green)


; clear-bulb : symbol --> boolean
; a program designed to identify the light that is on and then turn it off

(define (clear-bulb Color)
  (cond
    [(symbol=? Color 'red)
     (and (clear-solid-disk (make-posn 25 30) 20)
          (draw-circle (make-posn 25 30) 20))]
    [(symbol=? Color 'yellow)
     (and (clear-solid-disk (make-posn 25 30) 20)
          (draw-circle (make-posn 25 80) 20))]
    [(symbol=? Color 'green)
     (and (clear-solid-disk (make-posn 25 30) 20)
          (draw-circle (make-posn 25 130) 20))]))
 ; tests
 (clear-bulb 'red)
 
              