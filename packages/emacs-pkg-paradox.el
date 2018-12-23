;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : paradox
;;
;; Project for modernizing Emacs' Package Menu.
;;
;; SITE    : https://github.com/Malabarba/paradox
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package paradox
  :ensure t
  :defer t
  :config
  (setq paradox-spinner-type 'progress-bar
        paradox-execute-asynchronously t)
  )
