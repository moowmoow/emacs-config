;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : linum-relative
;;
;; display relative line number in emacs.
;;
;; SITE    : https://github.com/coldnew/linum-relative
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package linum-relative
  :ensure t
  :config
  (setq linum-relative-backend 'linum-mode)
  (linum-on)
  )

