#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)
(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(send dc set-brush "black" 'transparent)
(send dc draw-rectangle 10 10 50 50)

(send dc set-brush "black" 'solid)
(send dc draw-rectangle 105 10 50 50)

(send dc set-brush "black" 'hilite)
(send dc draw-rectangle 200 10 50 50)


(send dc set-brush "black" 'horizontal-hatch)
(send dc draw-rectangle 10 105 50 50)

(send dc set-brush "black" 'vertical-hatch)
(send dc draw-rectangle 105 105 50 50)

(send dc set-brush "black" 'cross-hatch)
(send dc draw-rectangle 200 105 50 50)


(send dc set-brush "black" 'bdiagonal-hatch)
(send dc draw-rectangle 10 200 50 50)

(send dc set-brush "black" 'fdiagonal-hatch)
(send dc draw-rectangle 105 200 50 50)

(send dc set-brush "black" 'crossdiag-hatch)
(send dc draw-rectangle 200 200 50 50)


(send target save-file "11.png" 'png)
