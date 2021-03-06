;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : magit
;;
;; GROUP   : Programming > Tools > Magit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package magit
  :ensure t
  :config
  ;; (require 'magit)
  ;;(set-default 'magit-stage-all-confirm nil)
  (add-hook 'magit-mode-hook 'magit-load-config-extensions)
  (if (string-equal system-type "windows-nt")
      (progn
        (setenv "GIT_ASKPASS" "git-gui--askpass")
        ))

  ;; (defadvice magit-status (around magit-fullscreen activate)
  ;;   (window-configuration-to-register :magit-fullscreen)
  ;;   ad-do-it
  ;;   (delete-other-windows))

  ;;(global-magit-file-mode t)
  )




  ;; (add-hook 'magit-mode-hook 'magit-svn-mode)
