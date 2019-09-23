#lang racket/base

(require graphics/turtles)

(turtles)

(define (repeat count function)
  (for ((i (in-range count))) (function)))

(repeat 36
        (lambda ()
          (turn 10)
          (repeat 10
                  (lambda ()
                    (turn 36)
                    (draw 80)
                    (repeat 3
                            (lambda ()
                              (draw 30)
                              (turn 120)))))))

(turtles #f)
(save-turtle-bitmap "22.png" 'png)
