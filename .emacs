;;; Initialization stuff
(setq load-path (cons "/Users/mike/elisp" load-path))

;(server-start)
;(display-time)
(menu-bar-mode nil)

;;; Colors
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(setq font-lock-maximum-size nil)
(set-cursor-color "red")

;(blink-cursor-mode nil)
(show-paren-mode t)

;;; These of go together (and make it save like vi)
(setq next-line-add-newlines nil)
(setq require-final-newline t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(defun my-text-mode-hook ()
  (turn-on-auto-fill)
  (setq indent-tabs-mode t))
(add-hook 'text-mode-hook 'my-text-mode-hook)

;;; Makefiles must have real tabs!
(defun my-makefile-mode-hook ()
  (setq indent-tabs-mode t))
(add-hook 'makefile-mode-hook 'my-makefile-mode-hook)

;;; Common to all C-based modes
(defun my-c-mode-common-hook ()
  (c-set-style "stroustrup"))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;; Particular to C mode
(defun my-c-mode-hook ()
  (c-set-style "bsd"))
(add-hook 'c-mode-hook 'my-c-mode-hook)
