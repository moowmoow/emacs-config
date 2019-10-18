;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : goto-chg
;;
;;
;;
;; SITE    : https://github.com/emacs-evil/goto-chg
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package goto-chg
  :ensure t
  :config
  (global-set-key (kbd "C-x C-\\") 'goto-last-change)
  (global-set-key (kbd "C-x C-|") 'goto-last-change-reverse)
  )
