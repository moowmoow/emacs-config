;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : company
;;
;; GROUP   :
;; SITE    : https://github.com/iquiw/company-restclient
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package company
  :ensure t
  :hook (scala-mode . company-mode)
  :config
  (setq lsp-completion-provider :capf)
  ;;(add-hook 'after-init-hook 'global-company-mode)
  ;;(global-set-key "\t" 'company-complete-common)
  ;; (global-set-key (kbd "C-<tab>") 'company-complete-common)

  (define-key company-mode-map (kbd "C-c \\") 'company-complete)
  (define-key company-mode-map (kbd "C-c |") 'company-complete-common)

  ;; (add-hook 'ielm-mode-hook 'company-mode)
  (add-hook 'ielm-mode-hook 'company-mode)
  (add-hook 'ielm-mode-hook (lambda () (push 'company-elisp company-backends)))
  (add-hook 'lisp-interaction-mode-hook 'company-mode)
  (add-hook 'lisp-interaction-mode-hook (lambda () (push 'company-elisp company-backends)))
  (add-hook 'emacs-lisp-mode-hook 'company-mode)
  (add-hook 'emacs-lisp-mode-hook (lambda () (push 'company-elisp company-backends))))

