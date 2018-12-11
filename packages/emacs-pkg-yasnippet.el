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
  (add-to-list 'yas-snippet-dirs (concat emacs-home "/init/snippets"))
  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-ido-expand))
