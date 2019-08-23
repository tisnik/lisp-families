; Examples for Clojure-py a dialect of the Lisp programming language designed to interact with Python
;
;  (C) Copyright 2018  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(def s 480)

(->>
    (str (format "<svg xmlns='http://www.w3.org/2000/svg' version='1.1' width='%d' height='%d'>" s s)
         (loop [i 0 R 255 G 255 B 0 o ""]
             (let [r (- 128 i)
                   a (/ i 12.)
                   b (+ i 80)
                   x (+ (/ s 2) (* b (Math/cos a)))
                   y (+ (/ s 2) (* b (Math/sin a)))
                   p (format"<circle cx='%f' cy='%f' r='%d' " x y r)
                   q (str "fill='rgb(" R "," G "," B ")' style='fill-opacity:.06'/>\n")]
                   (if (< i 128)
                       (recur (inc i) (- R 2) G (+ B 2) (str o p q p "fill='none' stroke='black'/>\n"))
                       o)))
         "</svg>")
    (spit "logo.svg"))

