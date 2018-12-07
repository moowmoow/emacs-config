;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : helm-descbinds
;;
;; GROUP   : Convenience > Helm > Helm Descbinds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package helm-descbinds
  :ensure t
  :config
  (global-set-key (kbd "C-h b") 'helm-descbinds)
  )
