(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path "~/.emacs.d/elisp")
;(add-to-list 'load-path "~/.emacs.d/elisp/emacs-jedi")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-epc")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-ctable")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-deferred")
(add-to-list 'load-path "~/.emacs.d/elisp/auto-complete-1.3.1")

;;; from here are the elpa packages
(add-to-list 'load-path "~/.emacs.d/elpa/virtualenvwrapper-20141026.1301")
(add-to-list 'load-path "~/.emacs.d/elpa/exec-path-from-shell-20141212.846")
(add-to-list 'load-path "~/.emacs.d/elpa/jedi-20150109.2230")
(add-to-list 'load-path "~/.emacs.d/elpa")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;(add-to-list 'load-path "~/.emacs.d/elpa/rope-read-mode-20150112.718")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-python-pyflakes-20131127.6")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-easy-20140818.55")
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-0.4.16")
(add-to-list 'load-path "~/.emacs.d/elpa/gnuplot-20141231.1337")
(add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.88")
(add-to-list 'load-path "~/.emacs.d/elpa/swift-mode-20150121.314")
(add-to-list 'load-path "~/.emacs.d/elpa/go-mode-20150410.245")
(add-to-list 'load-path "~/.emacs.d/elpa/ac-js2-20140906.442")
(add-to-list 'load-path "~/.emacs.d/elpa/nodejs-repl-20130520.1635")

(add-to-list 'load-path "~/.emacs.d/elpa/python-environment-20140321.1116")
(add-to-list 'load-path "~/.emacs.d/elpa/python-mode-20150113.931")
(add-to-list 'load-path "~/.emacs.d/elpa/pymacs-0.25")
(add-to-list 'load-path "~/.emacs.d/elpa/python-django-20150821.2104")


;; warm-night-theme-20150607.741
;; this is for python djnago stuff 
(add-to-list 'load-path "~/.emacs.d/elpa/virtualenvwrapper-20141026.1301")
;; virtualenvwrapper-20141026.1301
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-jslint-20130613.202")
;; this here is the packages of my own

(add-to-list 'load-path "~/.emacs.d/andy/")
;;; here after you inserted the load path all of the functions you defined in any of
;;; the folders will be able to be reached by emacs 
(load "test")
(load "python-keys")
;(load "python-config")
;(load "django-mode-config")
(load "basics")
(load "themes")
;(require 'basics)
;;; M-x eval-buffer
					;(message "requirement tested!!!!!!!!")
(electric-indent-mode -1)
(show-paren-mode)   ;; this line is important, it's for parentheses showing


(require 'flymake-jslint)
(add-hook 'js-mode-hook 'flymake-jslint-load)

;(require 'python)
;;;;;;;;;;;;; something about node js
(require 'cc-mode)
(require 'comint)
(require 'ansi-color)



(add-hook 'js2-mode-hook 'ac-js2-mode)

(fset 'doc-prev "\C-xo\C-x[\C-xo")
(fset 'doc-next "\C-xo\C-x]\C-xo")
(global-set-key (kbd "M-[") 'doc-prev)
(global-set-key (kbd "M-]") 'doc-next)

;;;;;; SETTING UP JEDI 
(require 'jedi)
(jedi:install-server)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)  
;;;;;; SETTING UP JEDI

(require 'exec-path-from-shell)

;;;;  package management
(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(setq jedi:server-command '("~/.emacs.d/elisp/emacs-jedi/jediepcserver.py"))
(require 'package)

(exec-path-from-shell-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(require 'epc)



;;;;;; better using jedi
(define-prefix-command 'ctl-d-map)
;;; let control + d be the first definition I ever use in my life
;;; let control + d be everything about jedi
(global-set-key (kbd "C-d") 'ctl-d-map)

;;;jedi go to definition
(global-set-key (kbd "C-d  C-d") 'jedi:goto-definition)

;;;;  django setups
(global-set-key (kbd "C-x j") 'python-django-open-project)


;; Save all tempfiles in $TMPDIR/emacs$UID/                                                        
(defconst emacs-tmp-dir (format "%s/%s%s/" temporary-file-directory "emacs" (user-uid)))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-safe-themes
   (quote
    ("9e1e2e7590c2f443c09a3f6240a05ada53f06566a6873c37eeae10d13dc372c9" default)))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)


;;;; setting up gmail
(setq gnus-select-method
      '(nnimap "gmail"
	       (nnimap-address "imap.gmail.com")  ; it could also be imap.googlemail.com if that's your server.
	       (nnimap-server-port "imaps")
	       (nnimap-stream ssl)))

(setq smtpmail-smtp-service 587
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
;;;;; end of setting up gmail



;;;; flymake for html
(defun flymake-html-init ()
	  (let* ((temp-file (flymake-init-create-temp-buffer-copy
	                     'flymake-create-temp-inplace))
	         (local-file (file-relative-name
	                      temp-file
	                      (file-name-directory buffer-file-name))))
	    (list "tidy" (list local-file))))
	
	(add-to-list 'flymake-allowed-file-name-masks
	             '("\\.html$\\|\\.ctp" flymake-html-init))
	
	(add-to-list 'flymake-err-line-patterns
	             '("line \\([0-9]+\\) column \\([0-9]+\\) - \\(Warning\\|Error\\): \\(.*\\)"
	               nil 1 2 4))
;;;; emd of flymake for html
