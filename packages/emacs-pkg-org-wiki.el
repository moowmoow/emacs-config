;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : org-wiki
;;
;; GROUP   : Programing > Tools > Org Wiki
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package org-wiki
  :ensure t
  :config
;; (require 'org-wiki)
  (defalias 'w-h #'org-wiki-helm)
  (defalias 'w-s #'org-wiki-switch)
  (defalias 'w-sr #'org-wiki-switch-root)
  (defalias 'w-hf #'org-wiki-helm-frame)
  (defalias 'w-hr #'org-wiki-helm-read-only)
  (defalias 'w-i #'org-wiki-index)
  (defalias 'w-in #'org-wiki-insert-new)
  (defalias 'w-n #'org-wiki-new)
  (defalias 'w-il #'org-wiki-insert-link)
  (defalias 'w-ad #'org-wiki-asset-dired)
  (defalias 'og2h #'org-html-export-to-html)
  (defalias 'w-close #'org-wiki-close)
  )
