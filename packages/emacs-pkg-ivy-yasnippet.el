;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : ivy-yasnippet
;;
;; GROUP   : Convenience > Ivy-yasnippet
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package ivy-yasnippet
  :ensure t
  :config
  (global-set-key (kbd "C-h C-y") 'ivy-yasnippet)
  (setq ivy-yasnippet-expand-keys "always")
  )
