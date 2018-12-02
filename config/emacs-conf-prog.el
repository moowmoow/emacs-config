
;; (if (string-equal system-type "windows-nt")
;;     (progn
;;       (add-to-list 'exec-path "C:/tools/apache-maven-3.6.0/bin")
;;       ))

;; web
(init-package "web-mode")

;; perl
;; (if (string-equal system-type "windows-nt")
;;     (progn
;;       (add-to-list 'exec-path (concat emacs-home "/misc/lang/perl/strawberry-perl-5.28.0.1-64bit-portable/perl/bin"))
;;       ))

(init-package "cperl-mode")
(init-package "helm-perldoc")

;; js
(init-package "js2-mode")
(init-package "tern")

;; java
(init-package "lsp-mode")

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)
(add-hook 'prog-mode-hook #'undo-tree-mode)

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
