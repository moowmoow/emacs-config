;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : company
;;
;; GROUP   :
;; SITE    : https://github.com/iquiw/company-restclient
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package company
  :ensure t
  :config
  ;;(add-hook 'after-init-hook 'global-company-mode)
  ;;(global-set-key "\t" 'company-complete-common)
  ;;(global-set-key (kbd "C-<tab>") 'company-complete-common)

  ;; (add-hook 'ielm-mode-hook 'company-mode)
  (add-hook 'ielm-mode-hook 'company-mode)
  (add-hook 'ielm-mode-hook (lambda () (push 'company-elisp company-backends)))
  (add-hook 'lisp-interaction-mode-hook 'company-mode)
  (add-hook 'lisp-interaction-mode-hook (lambda () (push 'company-elisp company-backends)))
  (add-hook 'emacs-lisp-mode-hook 'company-mode)
  (add-hook 'emacs-lisp-mode-hook (lambda () (push 'company-elisp company-backends))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : company-restclient
;;
;; GROUP   :
;; SITE    : https://github.com/iquiw/company-restclient
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package company-restclient
  :ensure t
  :config
  (require 'company-restclient)
  (add-to-list 'company-backends 'company-restclient))
