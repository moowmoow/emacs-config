(use-package lsp-java
  :ensure t
  :after lsp
  :config
  (add-hook 'java-mode-hook 'lsp)
  (use-package lsp-java-treemacs
    :after (treemacs)
    )
  )
