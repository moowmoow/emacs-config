;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : Yasnippet
;;
;; GROUP   : Editing > Yasnippet
;; SITE    : https://github.com/capitaomorte/yasnippet
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package yasnippet
  :ensure t
  :config
  ;; (setq yas-snippet-dirs
  ;;       '(
  ;;         '(concat emacs-home "/init/snippets")
          ;; ))
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-ido-expand))

