;;; package --- summary
;;; Commentary:
;;; Code:

;; Turn off mouse interface early in startup to avoid momentary display
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-startup-screen t)

(set-language-environment "UTF-8")

;;; require
(require 'package)

;;; custom
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;; melpa
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/"))
      package-archive-priorities '(("gnu" . 100)
				   ("melpa" . 10000)
				   ("melpa-stable" . 1000)))

(package-initialize)

(use-package spacemacs-theme
  :ensure t
  :defer t
  :init
  (load-theme 'spacemacs-dark t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package ivy
  :ensure t
  :config
  (ivy-mode))

(use-package projectile
  :ensure t
  :after (ivy)
  :config
  (setq projectile-completion-system 'ivy)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode))

(use-package counsel
  :ensure t
  :after (ivy))

(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :config
  (counsel-projectile-mode))

(use-package company :ensure t)
(use-package rainbow-delimiters :ensure t)
(use-package rainbow-identifiers :ensure t)
(use-package magit :ensure t)
(use-package ensime :ensure t)
(use-package tide :ensure t)

(use-package elisp-mode
  :after (company rainbow-delimiters rainbow-identifiers)
  :hook (emacs-lisp-mode lambda ()
			 (show-paren-mode) ; highlight parent delimiter
			 (rainbow-delimiters-mode)
			 (rainbow-identifiers-mode)
			 (company-mode)))

(setq backup-directory-alist (list (cons "." "~/.emacs.d/backups/")))

(global-linum-mode) ; enable line number

