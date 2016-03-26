(defun add-deja-item()
  "fast add item with deja project"
  (interactive)
  (if (current-line-empty-p)
      (progn
      (newline-and-indent)
      (insert "item['']")
      (goto-line (- (count-lines 1 (point)) 1))
      (move-beginning-of-line nil)
      (kill-line nil)
      (move-end-of-line nil)
      (backward-char)
      (backward-char)
      )
    (progn
      (move-end-of-line nil)
      (newline-and-indent)
      (insert "item['']")
      (backward-char)
      (backward-char)
      ))
  )

(defun add-print-stuff-line()
  "fast add item with deja project"
  (interactive)
  (newline-and-indent)
  (insert "print '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'")
  )



(defun add-deja-fast-soup()
  "fast add new line of soup to project"
  (interactive)
  (if (current-line-empty-p)
      (progn
        (newline-and-indent)
        (insert "soup =  BeautifulSoup(str(), 'lxml')")
        (goto-line (- (count-lines 1 (point)) 1))
        (move-beginning-of-line nil)
        (kill-line nil)
        (move-end-of-line nil)
        (loop for i in '(1 2 3 4 5 6 7 8 9 10) do (backward-char))
        )
    (progn
      (move-end-of-line nil)
      (newline-and-indent)
      (insert "soup =  BeautifulSoup(str(), 'lxml')")
      (loop for i in '(1 2 3 4 5 6 7 8 9 10) do (backward-char))
      ))
  )



(defun test-if()
  "just a test"
  (interactive)
  (if (current-line-empty-p) (message "true") (message "false"))
  )

(defun current-line-empty-p ()
  (save-excursion
    (beginning-of-line)
    (looking-at "[[:space:]]*$")))

(global-set-key (kbd "C-c m a s i") 'add-deja-item)
(global-set-key (kbd "C-c a p s l") 'add-print-stuff-line)
(global-set-key (kbd "C-c m a s s") 'add-deja-fast-soup)
