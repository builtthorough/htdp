;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 3.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area-cylinder : number number -> number
;; To take the height of a cylinder and radius of a it's base disk and return the area of the cylinder.
;; Examples: Radius of 5, Height of 10 should produce Area of Cylinder equal to 471.24

(define (area-cylinder radius height)
 (+ (area-pipe radius height) (* 2 (area-base-disk radius))))

;; area-pipe : number number -> number
;; To take the height of a cylinder and radius of a it's base disk and return the area of the pipe.

(define (area-pipe radius height)
  (* height (perimeter-pipe radius)))

;; perimeter : number -> number
;; To take the radius of a pipe's base disk and return the perimeter of the same.

(define (perimeter-pipe radius)
  (* 2 pi radius))

;; area-base-disk : number -> number
;; To take the radius of a cylinder's base disk and return the area of the same.

(define (area-base-disk radius)
  (* pi radius radius))

;; Tests

(area-cylinder 5 10)

