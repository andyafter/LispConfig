(add-to-list 'load-path "~/.emacs.d/themes/base16-emacs")
(add-to-list 'load-path "~/.emacs.d/elpa/spacemacs-theme-20160310.1337")
(require 'fogus-theme)


(set-face-attribute 'default nil
		    :family "Helvetica"
		    ;:family "Apple Gothic"
                    :height 140
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

(message "theme configuration done!")

(provide 'themes)
