#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc draw-line 0 0 255 255)
(send dc draw-line 0 255 255 0)

(send target save-file "01.png" 'png)
