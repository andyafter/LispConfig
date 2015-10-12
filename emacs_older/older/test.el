(message "hi")
(message "Her age is: %d" 16)        ; %d is for number
(message "Her name is: %s" "Vicky")  ; %s is for string

(load "test2")

(defun yay ()
  "Insert “Yay!” at cursor position."
  (interactive)
  (insert "Yay!")
  (insert "something here!")
  (andytest)
  (insert "after")
  )


(provide 'test)
