;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : javadoc-lookup
;;
;; javadoc을 조회할 수 있는 기능을 제공
;;
;; SITE    : https://github.com/skeeto/javadoc-lookup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package javadoc-lookup
  :ensure t
  :config
  (global-set-key (kbd "C-h j") 'javadoc-lookup)
  (setq javadoc-lookup-completing-read-function 'ivy-completing-read)
  (when (file-exists-p "/usr/share/doc/openjdk-8-jdk/api")
    (javadoc-add-roots "/usr/share/doc/openjdk-8-jdk/api"))
  (javadoc-add-artifacts [org.apache.commons commons-math3 "3.0"])
  )
