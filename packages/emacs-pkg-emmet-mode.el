;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : emmet-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
  (add-hook 'web-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

  (add-hook 'emmet-mode-hook
            (lambda()
              (define-key emmet-mode-keymap (kbd "C-j") nil)
              (define-key emmet-mode-keymap (kbd "C-M-j") 'emmet-expand-line)
              (define-key emmet-mode-keymap (kbd "C-M-;") 'emmet-expand-line)
              (define-key emmet-mode-keymap (kbd "<M-left>") 'emmet-prev-edit-point)
              (define-key emmet-mode-keymap (kbd "<M-right>") 'emmet-next-edit-point)
              ))

                                        ;(setq emmet-preview-default nil)
                                        ;(setq emmet-move-cursor-between-quotes t)
  )
