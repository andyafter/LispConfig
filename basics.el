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
  (dired "~/Desktop/sefinal/SE23FT07/bolt")
)

;;;; key bindings
(global-set-key (kbd "C-c c l") 'copy-line)
(global-set-key (kbd "C-c c b") 'open-bolt-project)
(global-set-key (kbd "C-c c n") 'copy-line-with-number)
(provide 'basics)


;;; automatically new line when press enter inside paranthesis
(defun new-line-dwim ()
  (interactive)
  (let ((break-open-pair (or (and (looking-back "{") (looking-at "}"))
                             (and (looking-back ">") (looking-at "<"))
                             (and (looking-back "(") (looking-at ")"))
                             (and (looking-back "\\[") (looking-at "\\]")))))
    (newline)
    (when break-open-pair
      (save-excursion
        (newline)
        (indent-for-tab-command)))
    (indent-for-tab-command)))

                                        ; this is for javascript
(require 'flymake-jslint)
(add-hook 'js-mode-hook 'flymake-jslint-load)
