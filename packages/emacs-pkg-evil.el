;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : evil
;;
;; Evil is an extensible vi layer for Emacs. It emulates the main features of Vim,
;; and provides facilities for writing custom extensions.
;;
;; SITE    : https://github.com/emacs-evil/evil
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package evil
  :ensure t
  :init
  ;; (setq evil-want-C-u-scroll t)
  :config
  (global-set-key (kbd "C-M-<return>") 'evil-mode)
  (evil-mode t)
  )
