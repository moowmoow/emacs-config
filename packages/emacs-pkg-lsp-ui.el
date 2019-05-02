(use-package lsp-ui
  :ensure t
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; (lsp-ui-peek-find-workspace-symbol "pattern 0")
  ;; If the server supports custom cross references
  ;; (lsp-ui-peek-find-custom 'base "$cquery/base")
  (setq lsp-ui-doc-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-flycheck-enable t)
  )
