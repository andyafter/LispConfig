(defun copy-line ()
  "Copy the current line"
  (interactive)
  (move-beginning-of-line nil)
  (set-mark (point))
  (move-end-of-line nil)
  (copy-region-as-kill (mark) (point))
  (deactivate-mark)
)

(defun copy-line-with-number(num)
  (interactive "nCopy Line of Number: ")
  (move-beginning-of-line nil)
  (setq original-line (+ 1 (count-lines 1 (point))))
  (goto-line num)
  (copy-line)
  (goto-line original-line)
  (move-end-of-line nil)
  (deactivate-mark)
) 

(defun open-bolt-project()
  "open bolt project folder"
  (interactive)
  (dired "/Users/andypan/Desktop/bolt/bolt/Bolt/bolt")
)


;;;; key bindings
(global-set-key (kbd "C-c c l") 'copy-line)
(global-set-key (kbd "C-c o b") 'open-bolt-project)
(global-set-key (kbd "C-c c n") 'copy-line-with-number)
(provide 'basics)
