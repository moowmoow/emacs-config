(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :bind
  (:map lsp-ui-mode-map
        ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
        ([remap xref-find-references] . lsp-ui-peek-find-references)
        )
  :init
  (setq
   lsp-ui-doc-delay 1.5
   lsp-ui-doc-position 'bottom
   lsp-ui-doc-max-width 100
   )
  ;;  :config
  ;;(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  ;;(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; (lsp-ui-peek-find-workspace-symbol "pattern 0")
  ;; If the server supports custom cross references
  ;; (lsp-ui-peek-find-custom 'base "$cquery/base")
  ;;  (setq lsp-ui-doc-enable nil)
  ;;  (setq lsp-ui-sideline-enable nil)
  ;;  (setq lsp-ui-flycheck-enable t)
  )
