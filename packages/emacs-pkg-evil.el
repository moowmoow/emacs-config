;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : evil
;;
;; Evil is an extensible vi layer for Emacs. It emulates the main features of Vim,
;; and provides facilities for writing custom extensions.
;;
;; SITE    : https://github.com/emacs-evil/evil
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package evil
  :ensure t
  :init
                                        ;(setq evil-want-C-u-scroll t)
  :config
  (with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "TAB") nil)) 
  (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
  (evil-define-key 'insert 'org-mode-map
    "C-t" 'org-metaleft
    "C-d" 'org-metaright
    "C" nil)
  (setq evil-want-C-i-jump nil)
  (global-set-key (kbd "C-M-<return>") 'evil-mode)
  (evil-set-undo-system 'undo-tree)
  (evil-mode t)
  )
