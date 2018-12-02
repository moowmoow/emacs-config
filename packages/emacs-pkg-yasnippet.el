;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : Yasnippet
;;
;; GROUP   : Editing > Yasnippet
;; SITE    : https://github.com/capitaomorte/yasnippet
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-ido-expand))

