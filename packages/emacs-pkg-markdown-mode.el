;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : markdown-mode
;;
;; 마크다운 모드
;;
;; SITE    : https://github.com/defunkt/markdown-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "/usr/bin/pandoc")
  :config
  (define-key markdown-mode-map (kbd "<M-S-right>") 'markdown-table-insert-column)
  (define-key markdown-mode-map (kbd "<M-S-left>") 'markdown-table-delete-column)
  (define-key markdown-mode-map (kbd "<M-S-up>") 'markdown-table-delete-row)
  (define-key markdown-mode-map (kbd "<M-S-down>") 'markdown-table-insert-row)
  (define-key markdown-mode-map (kbd "<M-right>") 'markdown-table-move-column-right)
  (define-key markdown-mode-map (kbd "<M-left>") 'markdown-table-move-column-left)
  (define-key markdown-mode-map (kbd "<M-up>") 'markdown-table-move-row-up)
  (define-key markdown-mode-map (kbd "<M-down>") 'markdown-table-move-row-down)
  )
