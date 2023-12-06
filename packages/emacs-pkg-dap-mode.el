(use-package dap-mode
  :ensure t
  :after
  (lsp-mode)
  :functions dap-hydra/nil
  :config
  (require 'dap-java)
  :bind
  (:map lsp-mode-map
        ("<f5>" . dap-debug)
        ("M-<f5>" . dap-hydra)
        )
  :hook
  (dap-session-created . (lambda (&_rest) (dap-hydra)))
  (dap-terminated . (lambda (&_rest) (dap-hydra/nil)))
  ;;  (dap-ui-mode t)
  ;;  (use-package dap-java
  ;;    :after lsp-java
  ;;    :config
  ;;    (local-set-key (kbd "C-x M-x d") 'dap-java-debug)
  ;;    )
  )

(use-package dap-java :ensure nil)
