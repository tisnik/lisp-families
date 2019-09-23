#lang racket/base

(require racket/class)
(require racket/draw)

(define (draw-example filename)
    (define target (make-bitmap 256 256))
    (define dc (new bitmap-dc% [bitmap target]))

    (send dc set-brush "white" 'solid)
    (send dc set-pen "white" 1 'transparent)
    (send dc draw-rectangle 0 0 256 256)


    (send dc set-pen "black" 1 'solid)
    (send dc set-smoothing 'aligned)

    (for ([i (in-range 0 256 10)])
         (send dc draw-line 255 0 i i)
         (send dc draw-line 0 i i 255))

    (send dc set-alpha 0.6)
    (send dc set-font (make-font #:size 60 #:family 'swiss #:weight 'bold))

    (send dc set-text-foreground "red")
    (send dc draw-text "Hello" 16 20)

    (send dc set-text-foreground "blue")
    (send dc draw-text "Hello" 16 140)

    (send target save-file filename 'png))

(draw-example "18.png")
