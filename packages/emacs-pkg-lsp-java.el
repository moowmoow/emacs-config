;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : lsp-java
;;
;; LSP JAVA
;;
;; SITE    : https://github.com/emacs-lsp/lsp-java
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package lsp-java
  :ensure t
  :after lsp
  :config
  (add-hook 'java-mode-hook 'lsp)
  (setq lsp-java-vmargs
        (list
         "-noverify"
         "-Xmx4G"
         "-XX:+UseG1GC"
         "-XX:+UseStringDeduplication"
         "-javaagent:/path/to/lombok-1.18.6.jar"))
  ;; (use-package lsp-java-treemacs
  ;;   :after
  ;; (setq treemacs-icon-java nil)
  ;; (treemacs)
  ;; )
  )
