;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : goto-last-change
;;
;; allows you to move point through buffer-undo-list positions.
;;
;; SITE    : https://www.emacswiki.org/emacs/GotoLastChange
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package goto-last-change
  :ensure t
  :config
  (global-set-key (kbd "C-x C-\\") 'goto-last-change)
  )
