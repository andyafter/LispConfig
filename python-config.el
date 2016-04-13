;;; configuration for python.el
(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require 'pip-requirements)

(defun my:ensure-python.el (&optional branch overwrite)
  "Install python.el from BRANCH.
After the first install happens the file is not overwritten again
unless the optional argument OVERWRITE is non-nil.  When called
interactively python.el will always be overwritten with the
latest version."
  (interactive
   (list
    (completing-read "Install python.el from branch: "
                     (list "master" "emacs-24")
                     nil t)
    t))
  (let* ((branch (or branch "master"))
         (url (format
               (concat "http://git.savannah.gnu.org/cgit/emacs.git/plain"
                       "/lisp/progmodes/python.el?h=%s") branch))
         (destination (expand-file-name "python.el" user-emacs-directory))
         (write (or (not (file-exists-p destination)) overwrite)))
    (when write
      (with-current-buffer
          (url-retrieve-synchronously url)
        (delete-region (point-min) (1+ url-http-end-of-headers))
        (write-file destination))
      (byte-compile-file destination t)
      destination)))

(my:ensure-python.el)

(provide 'python-config)
(message "end of text python  configuration")
