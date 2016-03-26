;; (defvar text-mode-syntax-table
;;   (let ((st (make-syntax-table)))
;;     (modify-syntax-entry ?\" ".   " st)
;;     (modify-syntax-entry ?\\ ".   " st)
;;     ;; Add `p' so M-c on `hello' leads to `Hello', not `hello'.
;;     (modify-syntax-entry ?' "w p" st)
;;     st)
;;   "Syntax table used while in `text-mode'.")

;; (defvar text-mode-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map "\e\t" 'ispell-complete-word)
;;     map)
;;   "Keymap for `text-mode'.
;; Many other modes, such as `mail-mode', `outline-mode' and
;; `indented-text-mode', inherit all the commands defined in this map.")
