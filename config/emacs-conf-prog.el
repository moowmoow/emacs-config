
(init-package "flycheck")
(init-package "origami")
(init-package "yaml-mode")

;; build env
(init-package "flycheck-gradle")

;; (if (string-equal system-type "windows-nt")
;;     (progn
;;       (add-to-list 'exec-path "C:/tools/apache-maven-3.6.0/bin")
;;       ))

;; web
(init-package "web-mode")
(init-package "emmet-mode")

;; perl
;; (if (string-equal system-type "windows-nt")
;;     (progn
;;       (add-to-list 'exec-path (concat emacs-home "/misc/lang/perl/strawberry-perl-5.28.0.1-64bit-portable/perl/bin"))
;;       ))

(init-package "cperl-mode")
(init-package "helm-perldoc")

;; js
(init-package "js2-mode")
(init-package "rjsx-mode")
(init-package "tern")

;; java
(init-package "javadoc-lookup")
(init-package "cc-mode")
(init-package "lsp-mode")
(init-package "company-lsp")
(init-package "lsp-ui")
(init-package "lsp-java")
(init-package "helm-lsp")
(init-package "dap-mode")
;; (init-package "meghanada")

;; php
(init-package "php-mode")
(init-package "ac-php-core")
(init-package "php-eldoc")
(init-package "company-php")
(init-package "flymake-php")

;; clojure
(init-package "cider")

;; sql
(init-package "ejc-sql")

;; common-lisp
(init-package "slime")

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Garbage Collection  (100MB)
(setq gc-cons-threshold 104857600)

(defun eval-region-or-buffer ()
  (interactive)
  (let ((debug-on-error t))
    (cond
     (mark-active
      (call-interactively 'eval-region)
      (message "Region evaluated!")
      (setq deactivate-mark t))
     (t
      (eval-buffer)
      (message "Buffer evaluated!")))))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-E") 'eval-region-or-buffer)))
