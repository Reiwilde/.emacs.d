;;; emacs internal packages
(use-package autorevert :ensure t :diminish auto-revert-mode)
(use-package flycheck :ensure t)
(use-package linum :ensure t)
(use-package paren :ensure t)

;;; text completion framework
(use-package company :ensure t)

;;; collection of ivy enhanced versions of common commands
(use-package counsel
  :ensure t
  :requires (ivy))

;;;
(use-package counsel-projectile
  :ensure t
  :requires (counsel projectile)
  :config
  (counsel-projectile-mode))

;;; diminish
(use-package diminish :ensure t)

;;;
(use-package editorconfig
  :ensure t
  :diminish editorconfig-mode
  :config
  (editorconfig-mode))

;;; vim emulation
;; (use-package evil
;;   :ensure t
;;   :after (undo-tree)
;;   :init
;;   (setq evil-want-integration t)
;;   (setq evil-want-keybinding t)
;;   :config
;;   (evil-mode))

;;; key bindings
(use-package general :ensure t)

;;; generic completion mechanism
(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config
  (ivy-mode))

;;; git
(use-package magit :ensure t)

;;; theme
(use-package monokai-theme
  :ensure t
  :init
  (load-theme 'monokai t))

;;;
(use-package org :ensure t)

;;; project management
(use-package projectile
  :ensure t
  :requires (ivy)
  :init
  (setq projectile-completion-system 'ivy)
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode))

;;;
(use-package rainbow-delimiters
  :ensure t
  :diminish rainbow-delimiters-mode)
(use-package rainbow-identifiers
  :ensure t
  :diminish rainbow-identifiers-mode)

;;;
(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode)

;;; key bindings completion
(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode))

(when (memq window-system '(mac ns x))
  (use-package exec-path-from-shell
    :ensure t
    :config
    (exec-path-from-shell-initialize)))

