;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : plantuml-mode
;;
;; PlantUML is a component that allow to quickly write
;;
;; SITE    : https://github.com/skuro/plantuml-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package plantuml-mode
  :ensure t
  :after org
  ;; :mode ("\\.plantuml\\")
  :config
  (setq plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar"
        org-plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar")
  
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (add-to-list 'auto-mode-alist '("\\.uml\\'" . plantuml-mode))
  )
