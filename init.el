(global-display-line-numbers-mode)
(menu-bar-mode -1)
(electric-pair-mode 1)
(setq inhibit-startup-screen t)
(setq next-line-add-newlines t)
(setq initial-scratch-message nil)

(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)
;;(package-refresh-contents)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)

(unless (package-installed-p 'dracula-theme)
  (package-install 'dracular-theme))

(load-theme 'dracula t)

(unless (package-installed-p 'rust-mode)
  (pacakge-install 'rust-mode))

(require 'rust-mode)
