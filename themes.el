(add-to-list 'load-path "~/.emacs.d/elpa/base16-theme-20150429.1737")
(add-to-list 'load-path "~/.emacs.d/elpa/dark-krystal-theme-20141115.2301")
(add-to-list 'load-path "~/.emacs.d/elpa/warm-night-theme-20150607.741")
(add-to-list 'load-path "~/.emacs.d/elpa/leuven-theme-20150818.556")

(require 'base16-ashes-dark-theme)

(set-face-attribute 'default nil
		    :family "Inconsolata"
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

;;;; theme for emacs and font and other style
;;;(load-theme 'leuven)
;(load-theme 'warm-night-theme)
;;;(require 'warm-night-theme)

;;; for the mode line
'(powerline-center-theme)

;; for the scrolling behavior
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)
;;;; end of theme and other styles


(provide 'themes)
