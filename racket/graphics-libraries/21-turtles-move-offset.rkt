#lang racket/base

(require graphics/turtles)

(turtles)

(move-offset 0 100)

(define (repeat count function)
  (for ((i (in-range count)))
       (function)))

(repeat 72
        (lambda ()
          (turn 5)
          (draw 15)))

(turtles #f)
(save-turtle-bitmap "22.png" 'png)
