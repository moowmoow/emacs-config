;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : diff-hl
;;
;; GROUP   : Programming > Tools > Vc > Diff Hl
;; SITE    : https://github.com/dgutov/diff-hl
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode)
  (add-hook 'dired-mode-hook 'diff-hl-dired-mode))
