(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t)
  (use-package dap-java
    :after lsp-java
    :config
    (local-set-key (kbd "C-x M-x d") 'dap-java-debug)
    )
  )
