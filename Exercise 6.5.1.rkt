;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 6.5.1|) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
1.

;; move-template : movie symbol --> ?
(define-struct movie (title producer))

(define (movie-template a-movie)
  ... (movie-title a-movie)...
  ... (movie-producer a-movie))...

;; boyfriend-template : boyrfriend symbol number --> ?
2. (define-struct boyfriend (name hair eyes phone))

(define (boyfriend-template a-boyfriend)
  ... (boyfriend-name a-movie)...
  ... (boyfriend-hair a-movie)...
  ... (boyfriend-eyes a-movie)...
  ... (boyfriend-phone a-movie))...