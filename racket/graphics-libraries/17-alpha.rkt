#lang racket/base

(require racket/class)
(require racket/draw)

(define (draw-example color filename)
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


    (send dc set-brush color 'solid)

    (define alpha 0.0)

    (for ([y (in-range 0 4)])
         (for ([x (in-range 0 4)])
              (send dc set-alpha alpha)
              (set! alpha (+ 0.06 alpha))
              (send dc draw-rectangle (+ 10 (* x 60))
                                      (+ 10 (* y 60))
                                      50 50)))

    (send target save-file filename 'png))

(draw-example "red"   "17A.png")
(draw-example "green" "17B.png")
(draw-example "blue"  "17C.png")
(draw-example "black" "17D.png")
