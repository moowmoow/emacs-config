(use-package org
  :ensure t
  :config
  (setq org-highlight-latex-and-related '(latex))
  ;;(setq org-src-fontify-natively nil)

  (define-key outline-minor-mode-map (kbd "<tab>") 'outline-cycle)

  ;; org-mode setting
  (setq org-src-fontify-natively t)
  ;;(org-block-begin-line ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
  ;;(org-block-background ((t (:background "#FFFFEA"))))
  ;;(org-block-end-line ((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
  ;; (defface org-block-begin-line
  ;;   '((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
  ;;   "Face used for the line delimiting the begin of source blocks.")

  ;; (defface org-block-background
  ;;   '((t (:background "#000000")))
  ;;   "Face used for the source block background.")

  ;; (defface org-block-end-line
  ;;   '((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF")))
  ;;   "Face used for the line delimiting the end of source blocks.")

  (setq org-todo-keywords
	    '((sequencep "TODO(t)" "PROGRESS(p)" "COMPLETE(c)" "|" "DONE(d)")
          (sequencep "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")))

  (global-set-key (kbd "C-c a") 'org-agenda)

  ;;; 인라인에서 이미지를 출력할지 설정
  (setq org-startup-with-inline-images t)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (plantuml . t)
     (restclient . t)
     (mermaid . t)
     ))

  (setq org-confirm-babel-evaluate nil)

  (add-hook 'org-babel-after-execute-hook
            (lambda ()
              (when org-inline-image-overlays
                (org-redisplay-inline-images))))

  ;; org-goto-auto-isearch disable
  (setq org-goto-auto-isearch nil)

  ;; imenu setting
  (global-set-key (kbd "C-c C-h") 'counsel-imenu)

  ;; 목록형 레벨에 따라 분류
  (setq org-list-demote-modify-bullet '(("+" . "-") ("-" . "+")))
  )
