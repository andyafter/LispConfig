;;; helm, magit, yasnippet

(require 'yasnippet)
(yas-global-mode 1)
;;; end for YASnippet

(require 'magit-mode)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))
