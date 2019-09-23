#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)
(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(define left-lambda-path
  (let ([p (new dc-path%)])
    (send p move-to 153 44)
    (send p line-to 161.5 60)
    (send p curve-to 202.5 49 230 42 245 61)
    (send p curve-to 280.06 105.41 287.5 141 296.5 186)
    (send p curve-to 301.12 209.08 299.11 223.38 293.96 244)
    (send p curve-to 281.34 294.54 259.18 331.61 233.5 375)
    (send p curve-to 198.21 434.63 164.68 505.6 125.5 564)
    (send p line-to 135 572)
    p))

(send dc translate 5 5)
(send dc scale 0.4 0.4)

(send dc set-smoothing 'smoothed)
(send dc set-pen "black" 1 'solid)
(send dc draw-path left-lambda-path)

(send target save-file "13.png" 'png)
