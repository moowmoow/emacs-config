;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : easy-jekyll
;;
;;
;;
;; SITE    : https://github.com/masasam/emacs-easy-jekyll
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package easy-jekyll
  :ensure t
  :init
  (setq easy-jekyll-basedir "/mnt/d/document/blog/")
  (setq easy-jekyll-url "https://moowmoow.github.io/blog")
  :bind
  ("C-c C-e" . easy-jekyll)
  ;; (global-set-key (kbd "C-c C-e") 'easy-jekyll)
  )
