;; 탭사이즈 설정
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(init-function "edit")

(global-set-key (kbd "C-M-<up>") 'move-line-up)
(global-set-key (kbd "C-M-<down>") 'move-line-down)
(global-set-key (kbd "M-g M-c") 'go-to-column)
(global-set-key (kbd "C-c $") 'toggle-truncate-lines)

(init-package "duplication-thing")
(init-package "iedit")
(init-package "yasnippet")
(init-package "ivy-yasnippet")
(init-package "company")
(init-package "company-quickhelp")
(init-package "auto-complete")
(init-package "whitespace")
(init-package "clean-aindent-mode")
(init-package "undo-tree")
(init-package "expand-region")
(init-package "hippie-exp")
(init-package "session")
(init-package "smartparens")
(init-package "undo-tree")
(init-package "multiple-cursors")
(init-package "visual-regexp")
(init-package "aggressive-indent")
(init-package "indent-guide")
(init-package "format-all")
(init-package "wgrep")
(init-package "darkroom")
;; (init-package "goto-last-change")
(init-package "goto-chg")

(show-paren-mode t)

;; electric-pair-mode
(electric-pair-mode t)

(delete-selection-mode t)

;; diff-mode에서 중요한 화이트스페이스 보이게 하기
(add-hook 'diff-mode-hook (lambda ()
                            (setq-local whitespace-style
                                        '(face
                                          tabs
                                          tab-mark
                                          spaces
                                          space-mark
                                          trailing
                                          indentation::space
                                          indentation::tab
                                          newline
                                          newline-mark))
                            (whitespace-mode 1)))
