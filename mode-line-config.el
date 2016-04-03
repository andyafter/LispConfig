(require 'smart-mode-line-powerline-theme)
(require 'powerline)
(require 'cl)
;(setq powerline-color1 "#222")      ;; dark grey;
;(setq powerline-color2 "#444")      ;; slightly lighter grey
;(setq powerline-arrow-shape 'slant-right) ;; mirrored arrows,
(setq sml/theme 'powerline)
(sml/setup)

;; every time I load sml theme seems that meta key is automatically
;; changed to I don't know which one, so I wro this
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'meta)
  )
