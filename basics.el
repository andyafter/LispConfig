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


(defun open-deja-product-project()
  "open deja origional product project folder"
  (interactive)
  (dired "~/Desktop/crawler/product/product")
  )

(defun open-deja-product-stock-project()
  "open deja origional product project folder"
  (interactive)
  (dired "~/Desktop/crawler/deja-product-stock")
  )


(defun open-deja-product-stock-project()
  "open deja origional product project folder"
  (interactive)
  (dired "~/Desktop/crawler/deja-product-stock")
  )

(defun console-log()
  "open bolt project folder"
  (interactive)
  (move-end-of-line nil)
  (insert "\nconsole.log('');")
  (backward-char)
  (backward-char)
  (backward-char)
  )


(defun current-line-empty-p ()
  (save-excursion
    (beginning-of-line)
    (looking-at "[[:space:]]*$")))

;;;; key bindings
(global-set-key (kbd "C-c c l") 'copy-line)
(global-set-key (kbd "C-c c b") 'open-bolt-project)
(global-set-key (kbd "C-c c d") 'open-deja-project)
(global-set-key (kbd "C-c c o") 'open-deja-product-project)
(global-set-key (kbd "C-c c s") 'open-deja-product-stock-project)
(global-set-key (kbd "C-c c n") 'copy-line-with-number)
;(global-set-key (kbd "C-c a c l") 'console-log)


;; to load mode-line-config file

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



(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)
(helm-mode 1)




;; key bindings

(when (eq system-type 'darwin) ;; mac specific settings
  ;; for binding mac option key as meta
  (setq mac-option-modifier 'meta)
  )





;; hooks for linumber after any mode is on
(global-linum-mode t)
;(linum-relative-on t)


 ;; (add-hook 'projectile-find-file-hook
 ;;            'linum-mode)

 ;;  (add-hook 'find-file-hook
 ;;            'linum-mode)

;; below is the configuration for prelude flycheck
(add-hook 'open-bolt-project
          'window-numbering-mode)

(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))

(package-install 'cloc)

(setq prelude-flyspell nil)
(message "end for basics!!!!")
