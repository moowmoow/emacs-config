
(use-package helm-perldoc
  :ensure t
  :config
  (eval-after-load "cperl-mode"
    '(progn
       (helm-perldoc:setup)))
  (add-hook 'cperl-mode-hook 'helm-perldoc:carton-setup)
  )
