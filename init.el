;; Hide useless elements
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Theme
(load-theme 'leuven t)

;; Quicker Yes / No
(defalias 'yes-or-no-p 'y-or-n-p)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

(dolist (mode '(org-mode-hook
                term-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
