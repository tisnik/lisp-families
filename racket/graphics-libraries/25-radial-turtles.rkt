#lang racket/base

(require graphics/turtles)
(require graphics/turtle-examples)

(turtles)

(define (repeat count function)
  (for ((i (in-range count))) (function)))

(radial-turtles 5)

(move 120)

(repeat 6
        (lambda ()
            (draw 30)
            (turn 144)))

(turtles #f)
(save-turtle-bitmap "25.png" 'png)
