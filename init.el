(set-language-environment "UTF-8")

;; custom
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; melpa
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;; display
(load-theme 'spacemacs-dark t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; typescript
;;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

;;(defun setup-tide-mode ()
;;  (interactive)
;;  (tide-setup)
;;  (flycheck-mode +1)
;;  (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;  (eldoc-mode +1)
;;  (tide-hl-identifier-mode +1)
;;  (company-mode +1))

;;(add-hook 'typescript-mode-hook #' setup-tide-mode)
