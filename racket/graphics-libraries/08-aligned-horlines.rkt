#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)

(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(send dc set-pen "black" 1 'solid)
(send dc set-smoothing 'aligned)

(for ([i (in-range 0 256 10)])
     (send dc draw-line 0 i 255 i))

(send target save-file "08.png" 'png)