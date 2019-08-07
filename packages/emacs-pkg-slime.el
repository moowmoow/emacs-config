;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : slime
;;
;; SLIME is the Superior Lisp Interaction Mode for Emacs.
;;
;; SITE    : https://github.com/slime/slime
;;           https://common-lisp.net/project/slime/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package slime
  :ensure t
  :commands slime
  :init
  (setq inferior-lisp-program (or (executable-find "sbcl")
                                  (executable-find "/usr/bin/sbcl")
                                  (executable-find "/usr/local/bin/sbcl")
                                  "sbcl"
                                  ))
  :config
  (require 'slime-autoloads)
  (slime-setup '(slime-fancy))
  (add-hook 'slime-repl-mode-hook (lambda() (paredit-mode t)))
  )
