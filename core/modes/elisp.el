(use-package elisp-mode
  :defer t
  :requires (company
	     linum
	     parent
	     raibow-delimiters
	     rainbow-identifiers)
  :hook (emacs-lisp-mode lambda ()
			 (company-mode)
			 (linum-mode)
			 (rainbow-delimiters-mode)
			 (rainbow-identifiers-mode)
			 (show-paren-mode)))

