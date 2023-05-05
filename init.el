;;; clean up interface

;; hide start screen
(setq inhibit-startup-message t)

;; hide menu bar
(menu-bar-mode -1)

;; hide tool bar and scroll bar
(if window-system
    ((tool-bar-mode -1)
     (scroll-bar-mode -1)))

;;; built-in interface configuration

;; always show line numbers
(global-display-line-numbers-mode 1)

;;; custom hotkeys

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;; misc

;; ido
(ido-mode 1)

;;; set and load custom file
(setq custom-file (concat user-emacs-directory "custom.el"))
(unless (file-exists-p (concat user-emacs-directory "custom.el"))
  (write-region "" nil custom-file))
(load custom-file 'noerror)

;;; setup Melpa and install and use packages

;; setup Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; use packages

(use-package nimbus-theme
  :ensure t
  :config (load-theme 'nimbus))

(use-package simple-modeline
  :ensure t
  :config (simple-modeline-mode))
