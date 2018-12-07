;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : highlight-numbers
;;
;; GROUP   : Faces > Highlight Numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package highlight-numbers
  :ensure t
  :config
  (add-hook 'prog-mode-hook (lambda () (highlight-numbers-mode)))
  )
