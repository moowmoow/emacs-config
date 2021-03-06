(use-package meghanada
  :ensure t
  :config
  (add-hook 'java-mode-hook
            (lambda()
              ;; meghanada-mode on
              (meghanada-mode t)
              (flycheck-mode +1)
              (setq c-basic-offset 4)
              ;; use code format
              ;; (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)
              ))
  (cond
   ((eq system-type 'window-nt)
    (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
    (setq meghanada-maven-path (expand-file-name "bin/mvn.cmd" (getenv "MAVEN_HOME"))))
    ;; (setq meghanada-maven-path "mvn.cmd"))
   (t
    (setq meghanada-java-path "java")
    (setq meghanada-maven-path "mvn")))
  )
