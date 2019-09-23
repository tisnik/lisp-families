#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)

(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(send dc set-smoothing 'aligned)

(send dc set-pen "red" 1 'long-dash)
(send dc draw-line 10 128 128 10)
(send dc draw-line 128 10 246 128)

(send dc set-pen "blue" 1 'solid)
(send dc draw-spline 10 130 128 12 246 130)

(send target save-file "16.png" 'png)
