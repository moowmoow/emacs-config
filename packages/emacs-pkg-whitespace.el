;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Convenience > Whitespace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package whitespace
  :ensure t
  :config
  ;; 불필요한 whitespace가 생성되면 whitespace 하이라이트
  (add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace t)))
  ;; whitepsace 모드 토클
  (global-set-key (kbd "C-c w") 'whitespace-mode)
  (global-set-key (kbd "C-c M-w c") 'whitespace-cleanup)
  (global-set-key (kbd "C-c M-w r") 'whitespace-cleanup-region)
  )
