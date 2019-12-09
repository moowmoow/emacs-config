;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : emacs-counsel-tramp
;;
;; Tramp ivy interface for ssh server and docker and vagrant
;;
;; SITE    : https://github.com/masasam/emacs-counsel-tramp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package counsel-tramp
  :ensure t
  :config
  (setq tramp-default-method "ssh")
  (define-key global-map (kbd "C-c s") 'counsel-tramp)

  ;; 시작 HOOK
  (add-hook 'counsel-tramp-pre-command-hook
            '(lambda ()
               ;; (global-aggressive-indent-mode 0)
               ;; (projectile-mode 0)
               ))

  ;; 종료 HOOK
  (add-hook 'counsel-tramp-quit-hook
            '(lambda ()
               ;; (global-aggressive-indent-mode 1)
               ;; (projectile-mode 1)
               ))

  ;; (setq make-backup-files nil)
  ;; (setq create-lockfiles nil)

  ;; connect with bash
  (eval-after-load 'tramp '(setenv "SELL" "/bin/bash"))

  ;; master path
  ;; (setq counsel-tramp-control-master-path (concat emacs-work "/.ssh"))
  )
