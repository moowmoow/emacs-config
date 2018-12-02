;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : smartparens
;;
;; GROUP   : Editing > Smartparens
;; SITE    : https://github.com/Fuco1/smartparens
;;           https://github.com/Fuco1/smartparens/wiki
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  (setq sp-base-key-bindings 'paredit)
  (setq sp-autoskip-closing-pair 'always)
  (setq sp-hybrid-kill-entrie-symbol nil)
  (sp-use-paredit-bindings)
  )
