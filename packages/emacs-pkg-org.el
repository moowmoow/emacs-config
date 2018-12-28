(use-package org
  :ensure t
  :config
  (setq org-highlight-latex-and-related '(latex))
  ;;(setq org-src-fontify-natively nil)

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
	    '((sequencep "TODO(t)" "|" "DONE(d)")
          (sequencep "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")))

  (global-set-key (kbd "C-c a") 'org-agenda)
  ;;; image
  (setq org-startup-with-inline-images t)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((plantuml . t)))

  (setq org-confirm-babel-evaluate nil)

  (add-hook 'org-babel-after-execute-hook
            (lambda ()
              (when org-inline-image-overlays
                (org-redisplay-inline-images))))
  )
