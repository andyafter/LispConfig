(add-to-list 'load-path "~/.emacs.d/themes/base16-emacs")
(add-to-list 'load-path "~/.emacs.d/elpa/spacemacs-theme-20160310.1337")
(add-to-list 'load-path "~/.emacs.d/elpa/sublime-themes-20160111.122")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")


;(require 'emacs-color-themes)
(load-theme 'fogus t)


(set-face-attribute 'default nil
		    ;:family "Helvetica"
		    ;:family "Times New Roman"
		    ;:family "Myriad"
		    :family "Myriad"
                                      ;:family "Apple Gothic"
                    :foreground "#A5B8B6"
                    :distant-foreground "#8F9683"
                    :height 120
                    :weight 'normal
                    :width 'normal)

(when (functionp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    'unicode
                    (font-spec :family "DejaVu Sans Mono"
                               :width 'normal
                               :size 12.4
                               :weight 'normal)))

;;; for the mode line

;; for the scrolling behavior
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
;;;; end of theme and other styles

(setq sp-highlight-pair-overlay nil) ; this is to disable the highlight for useless spaces


;; line number relative
(require 'linum-relative)
(linum-on)

;;; done
(message "theme configuration done!")

(provide 'themes)
