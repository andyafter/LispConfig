;;; this

(defun open-deja-project()
  "open deja project folder"
  (interactive)
  (dired "~/Desktop/crawler/deja-product/src")
  )




(global-set-key (kbd "C-c c d") 'open-deja-project)


;(require 'anaconda-mode)
;(add-hook 'python-mode-hook 'anaconda-mode)
;(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
;(add-to-list 'python-shell-extra-pythonpaths "/Users/panan/Desktop/crawler/deja-product")
;(add-to-list 'python-shell-extra-pythonpaths "/Library/Python/2.7/site-packages/")
;(setenv "PYTHONPATH" "/Users/panan/Desktop/crawler/deja-product")
;(require 'python-mode)
;(provide 'deja-config)
(message "Here is the end for deja init!")
;;; deja-config ends here
