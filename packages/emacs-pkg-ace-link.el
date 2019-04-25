(use-package ace-link
  :ensure t
  :config
  (ace-link-setup-default)
  (global-set-key (kbd "M-O") 'ace-link-addr)
  (with-eval-after-load "org-mode"
    (define-key org-mode-map (kbd "M-O") 'ace-link-org))
  ;; (define-key gnus-summary-mode-map (kbd "M-O") 'ace-link-gnus)
  ;; (define-key gnus-article-mode-map (kbd "M-O") 'ace-link-gnus)
  )
