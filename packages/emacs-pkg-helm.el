;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : helm
;;
;; GROUP   : Convenience > Helm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (add-hook 'org-mode (lambda ()(define-key org-mode-map (kbd "C-S-h") 'helm-org-in-buffer-headings)))
  )


