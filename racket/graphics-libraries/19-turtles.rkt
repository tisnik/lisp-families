#lang racket/base

(require graphics/turtles)

(turtles)

(draw 100)
(turn 90)

(draw 100)
(turn 90)

(draw 100)
(turn 90)

(draw 100)
(turn 90)

(turtles #f)
(save-turtle-bitmap "19.png" 'png)
