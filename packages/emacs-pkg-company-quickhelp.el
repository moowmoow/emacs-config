;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : company-quickhelp
;;
;; One of the things I missed the most when moving from auto-complete to company
;; was the documentation popups that would appear when idling on a completion candidate.
;; This package remedies that situation.
;;
;; SITE    : https://github.com/expez/company-quickhelp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package company-quickhelp
  :ensure t
  :after company
  :config
  (company-quickhelp-mode 1)
  )
