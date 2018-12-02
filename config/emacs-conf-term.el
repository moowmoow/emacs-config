
(init-package "multi-term")

;; 윈도우 환경에서 쉘 설정
(if (string-equal system-type "windows-nt")
    (progn
      ;; (setq explicit-shell-file-name "C:/tools/cygwin64/bin/bash.exe")
      (setq explicit-shell-file-name (concat emacs-base "/libexec/emacs/26.1/x86_64-w64-mingw32/cmdproxy.exe"))
      (setq shell-file-name explicit-shell-file-name)
      ;; (add-to-list 'exec-path "C:/tools/cygwin64/bin")
      ))

(add-hook 'term-mode-hook (lambda ()
                            (yas-minor-mode nil)
                            (setq term-buffer-maximum-size 1000)
                            (toggle-truncate-lines t)
                            (define-key term-raw-map (kbd "C-t") 'my-term-switch-line-char)
                            (define-key term-mode-map (kbd "C-t") 'my-term-switch-line-char)
                            (define-key term-raw-map (kbd "M-x") 'execute-extended-command)
                            (define-key term-raw-map (kbd "C-y") 'term-paste)
                            (define-key term-raw-map (kbd "C-c l") 'org-store-link)
                            (define-key term-raw-map (kbd "C-c c") 'org-capture)
                            (define-key term-raw-map (kbd "C-c a") 'org-agenda)
                            (define-key term-raw-map (kbd "C-c C-e") 'term-send-esc)
                            (define-key term-raw-map (kbd "M-o") 'ace-window)
                            ))

(defun my-term-switch-line-char ()
  "Switch 'term-in-line-mode' and 'term-in-char-mode' in 'ansi-term'"
  (interactive)
  (cond
   ((term-in-line-mode)
    (term-char-mode)
    (hl-line-mode -1)
    (beacon-mode -1))
   ((term-in-char-mode)
    (term-line-mode)
    (hl-line-mode t)
    (beacon-mode t))))
