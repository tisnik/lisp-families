#lang racket/base

(require graphics/turtles)

(turtles)

(define (repeat count function)
  (for ((i (in-range count)))
       (function)))

(repeat 72
        (lambda ()
          (turn 5)
          (draw 15)))

(turtles #f)
(save-turtle-bitmap "20.png" 'png)
