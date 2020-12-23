;
;  (C) Copyright 2020  Pavel Tisnovsky
;
;  All rights reserved. This program and the accompanying materials
;  are made available under the terms of the Eclipse Public License v1.0
;  which accompanies this distribution, and is available at
;  http://www.eclipse.org/legal/epl-v10.html
;
;  Contributors:
;      Pavel Tisnovsky
;

(define (test-negate)
  (display "test-negate")
  (display (negate 0))
  (display (negate 1))
  (display (negate -1))
  (display (negate "foobar"))
  (display "done"))

(test-negate)
