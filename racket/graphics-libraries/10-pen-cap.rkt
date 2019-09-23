#lang racket/base

(require racket/class)
(require racket/draw)

(define target (make-bitmap 256 256))
(define dc (new bitmap-dc% [bitmap target]))

(send dc set-brush "white" 'solid)

(send dc set-pen "white" 1 'transparent)
(send dc draw-rectangle 0 0 256 256)

(send dc set-smoothing 'aligned)

(send dc set-pen (send the-pen-list find-or-create-pen "black" 1 'solid 'butt))
(send dc draw-line 0 10 255 10)

(send dc set-pen (send the-pen-list find-or-create-pen "black" 1 'dot 'butt))
(send dc draw-line 0 20 255 20)

(send dc set-pen (send the-pen-list find-or-create-pen "black" 1 'long-dash 'butt))
(send dc draw-line 0 30 255 30)

(send dc set-pen (send the-pen-list find-or-create-pen "black" 1 'short-dash 'butt))
(send dc draw-line 0 40 255 40)

(send dc set-pen (send the-pen-list find-or-create-pen "black" 1 'dot-dash 'butt))
(send dc draw-line 0 50 255 50)

(send dc set-pen (send the-pen-list find-or-create-pen "gray" 5 'solid 'butt))
(send dc draw-line 0 80 255 80)

(send dc set-pen (send the-pen-list find-or-create-pen "gray" 5 'dot 'butt))
(send dc draw-line 0 90 255 90)

(send dc set-pen (send the-pen-list find-or-create-pen "gray" 5 'long-dash 'butt))
(send dc draw-line 0 100 255 100)

(send dc set-pen (send the-pen-list find-or-create-pen "gray" 5 'short-dash 'butt))
(send dc draw-line 0 110 255 110)

(send dc set-pen (send the-pen-list find-or-create-pen "gray" 5 'dot-dash 'butt))
(send dc draw-line 0 120 255 120)

(send dc set-pen (send the-pen-list find-or-create-pen "darkgreen" 15 'solid 'butt))
(send dc draw-line 0 150 255 150)

(send dc set-pen (send the-pen-list find-or-create-pen "darkgreen" 15 'dot 'butt))
(send dc draw-line 0 170 255 170)

(send dc set-pen (send the-pen-list find-or-create-pen "darkgreen" 15 'long-dash 'butt))
(send dc draw-line 0 190 255 190)

(send dc set-pen (send the-pen-list find-or-create-pen "darkgreen" 15 'short-dash 'butt))
(send dc draw-line 0 210 255 210)

(send dc set-pen (send the-pen-list find-or-create-pen "darkgreen" 15 'dot-dash 'butt))
(send dc draw-line 0 230 255 230)


(send target save-file "10.png" 'png)
