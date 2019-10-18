;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : helm-describe-modes
;;
;; helm-describe-modes provides a Helm interface to Emacs’s describe-mode.
;; It lists the major mode, active minor modes,
;; and inactive minor modes using Helm, and provides actions for each mode.
;;
;; SITE    : https://github.com/emacs-helm/helm-describe-modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package helm-describe-modes
  :ensure t
  :config
  (global-set-key [remap describe-mode] #'helm-describe-modes)
  )
