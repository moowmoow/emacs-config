(use-package lsp-mode
  :ensure t
  :hook
  (lsp-mode . lsp-enable-which-key-integration)
  (java-mode . #'lsp-deferred)
  :init
  (setq
   lsp-keymap-prefix "C-c l"
   lsp-enable-file-watchers nil
   read-process-output-max (* 1024 1024)
   lsp-completion-provider :capf
   lsp-idle-delay 0.500
   ;;lsp-eldoc-render-all nil
   ;;lsp-highlight-symbol-at-point nil
   )
  :config
  (setq lsp-intelephense-multi-root nil)
  (with-eval-after-load 'lsp-intelephense
    (setf (lsp--client-multi-root (gethash 'iph lsp-clients)) nil))
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  )
