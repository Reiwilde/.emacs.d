;; Turn off mouse interface early in startup to avoid momentary display
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-startup-screen t)

(set-language-environment "UTF-8")

(add-to-list 'load-path "~/.emacs.d/core/")
(add-to-list 'load-path "~/.emacs.d/modes/")

;;; require
(require 'package)

;;; custom
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;; package
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")))

(package-initialize)

(setq backup-directory-alist (list (cons "." "~/.emacs.d/backups/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(load "~/.emacs.d/core/core-packages.el")

(load "~/.emacs.d/modes/dart.el")
(load "~/.emacs.d/modes/elisp.el")
(load "~/.emacs.d/modes/rust.el")
(load "~/.emacs.d/modes/typescript.el")

