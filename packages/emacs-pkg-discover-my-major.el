;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : discover-my-major
;;
;; GROUP   : Help
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package discover-my-major
  :ensure t
  :config
  ;; hello world 단축키 취소
  (global-unset-key (kbd "C-h h"))
  (define-key 'help-command (kbd "h m") 'discover-my-major))
