#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)
(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(define rectangle-brush
  (new brush%
       [gradient
        (new linear-gradient%
             [x0 0]
             [y0 100]
             [x1 100]
             [y1 0]
             [stops
              (list (list 0   (make-object color% 255 0 0))
                    (list 0.5 (make-object color% 0 255 0))
                    (list 1   (make-object color% 0 0 255)))])]))

(send dc set-brush rectangle-brush)
(send dc draw-rectangle 0 0 255 255)

(send target save-file "12.png" 'png)
