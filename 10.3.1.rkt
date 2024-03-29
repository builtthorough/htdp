;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; A shape is a structure that is either:
;;   - (make-circle c p n); or
;;   - (make-rectangle c p n n);
;; Where:
;;   1. p is a posn structure
;;   2. n is a number
;;   3. c is a symbol

(define-struct circle (center radius color))
(define-struct rectangle (nw-corner width height color))
  
(define face
  (cons (make-circle (make-posn 50 50) 40 'red)
  (cons (make-rectangle (make-posn 30 20) 5 5 'blue)
  (cons (make-rectangle (make-posn 65 20) 5 5 'blue)
  (cons (make-rectangle (make-posn 40 75) 20 10 'red)
  (cons (make-rectangle (make-posn 45 35) 10 30 'blue) empty))))))

#|
;; TEMPLATE
(define (prog-for-shape a-shape)
  (cond
    [(circle? a-shape) 
     (circle-color a-shape) ...
     (circle-center a-shape) ...
     (circle-radius a-shape) ...]
    [(rectangle? a-shape)
     (rectangle-color a-shape) ...
     (rectangle-nw-corner a-shape) ...
     (rectangle-width a-shape) ...
     (rectangle-height a-shape) ...]))
|#

;; draw-shape : shape -> true
;; draws a-shape

(define (draw-shape a-shape)
  (cond
    [(circle? a-shape) 
     (draw-circle
      (circle-center a-shape)
      (circle-radius a-shape)
      (circle-color a-shape))]
    [(rectangle? a-shape)
     (draw-solid-rect 
      (rectangle-nw-corner a-shape)
      (rectangle-width a-shape)
      (rectangle-height a-shape)
      (rectangle-color a-shape))]))

;; translate-shape : shape number -> true
;; translates a-shape by delta pixels in the X directions
(define (translate-shape a-shape delta)
  (cond
    [(circle? a-shape) 
     (make-circle      
      (circle-color a-shape)
      (make-posn (+ delta (posn-x (circle-center a-shape)))
                 (posn-y (circle-center a-shape)))
      (circle-radius a-shape))]
    [(rectangle? a-shape)
     (make-rectangle
      (rectangle-color a-shape)
      (make-posn (+ delta (posn-x (rectangle-nw-corner a-shape)))
                 (posn-y (rectangle-nw-corner a-shape)))
      (rectangle-width a-shape)
      (rectangle-height a-shape))]))

;-----------------------------------------------------------------------------------

;; Shapes are a class of lists of shapes that contain:
;;   1. empty; or
;;   2. (cons s los)
;; where s is a shape and los is a list of shapes

;; Template
;; fun-with-shapes : a-los --> ?

#|
(define (fun-wth-shapes a-los)
  (cond
    [(empty?)]
    [else ... (first a-los)...(fun-with-shapes (rest a-los))...]))|#

(define (draw-los a-los)
  (cond
    [(empty? a-los) true]
    [else
     (and
      (draw-shape (first a-los))
      (draw-los (rest a-los)))]))


; ------------------------------------------------------------------------

(define (translate-los delta a-los)
  (cond
    [(empty? a-los) empty]
    [else
     (cons (translate-shape (first a-los) delta) (translate-los delta (rest a-los)))]))


;;Tests

(start 300 100)
(translate-los 50 face)


