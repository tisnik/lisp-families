#lang racket/base

(require graphics/turtles)

(turtles)

(define (repeat count function)
  (for ((i (in-range count))) (function)))

(repeat 36
        (lambda ()
          (turn 10)
          (repeat 36
                  (lambda ()
                    (turn 10)
                    (draw 20)))))

(turtles #f)
(save-turtle-bitmap "23.png" 'png)