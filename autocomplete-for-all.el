(ac-config-default)
(setq jedi:setup-keys nil)
(setq jedi:tooltip-method nil)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; for angularjs
;;   /Users/panan/.emacs.d/elpa/angular-mode-20151201.1327
()
(add-to-list 'ac-dictionary-directories "/Users/panan/.emacs.d/elpa/angular-mode-20151201.1327/ac-dict")
(add-to-list 'ac-modes 'angular-mode)
(add-to-list 'ac-modes 'angular-html-mode)
