;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : flycheck-gradle
;;
;; Flycheck extension for gradle projects.
;;
;; SITE    : https://github.com/jojojames/flycheck-gradle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package flycheck-gradle
  :ensure t
  :commands (flycheck-gradle-setup)
  :init
  (mapc
   (lambda (x)
     (add-hook x #'flycheck-gradle-setup))
   '(java-mode-hook kotlin-mode-hook)))

;; (use-package flycheck-gradle
;;   :ensure t
;;   :commands (flycheck-gradle-setup)
;;   :init
;;   (mapc
;;    (lambda (x)
;;      (add-hook x #'flycheck-gradle-setup ))
;;    ;; '(java-mode-hook kotlin-mode-hook)
;;    )
;;   )
