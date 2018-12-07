;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : tern
;;
;; GROUP   : Programming
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package tern
  :ensure t
  :config
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  (add-hook 'web-mode-hook (lambda () (tern-mode t)))
  )

(use-package tern-auto-complete
  :ensure t
  :config
  (add-hook 'js2-mode-hook (lambda () (auto-complete-mode)))
  (add-hook 'web-mode-hook (lambda () (auto-complete-mode)))
  (eval-after-load 'tern
    '(progn
       (require 'tern-auto-complete)
       (setq tern-ac-on-dot t)
       (tern-ac-setup)))
  )
