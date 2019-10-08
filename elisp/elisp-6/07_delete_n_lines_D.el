(defun delete-n-lines
    (number)
  (interactive "p")
  (beginning-of-line)
  (let ((p1 (point)))
    (dotimes (i number)
      (forward-line))
    (kill-region p1 (point))))
