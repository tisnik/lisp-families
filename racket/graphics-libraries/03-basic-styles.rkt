#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)

(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(send dc set-pen "red" 3 'solid)
(send dc draw-line 0 0 255 255)
(send dc draw-line 0 255 255 0)

(send target save-file "03.png" 'png)
