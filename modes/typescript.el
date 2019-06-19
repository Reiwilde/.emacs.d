(use-package tide :ensure t)

(defun setup-typescript-mode ()
  (interactive)
  (linum-mode)
  (rainbow-delimiters-mode)
  (show-paren-mode)
  (tide-setup)
  (company-mode)
  (flycheck-mode)
  (setq typescript-indent-level 2))

(use-package typescript-mode
  :ensure t
  :defer t
  :hook (typescript-mode . setup-typescript-mode)
  :mode "\\.[jt]s[x]?\\'"
  :requires (company
	     flycheck
	     linum
	     rainbow-delimiters
	     paren
	     tide))

