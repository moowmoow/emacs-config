(init-package "org")
(init-package "org-bullets")
(init-package "org-wiki")

(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'hl-line-mode)
(add-hook 'text-mode-hook #'undo-tree-mode)

