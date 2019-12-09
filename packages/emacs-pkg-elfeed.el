;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : elfeed
;;
;; Elfeed is an extensible web feed reader for Emacs, supporting both Atom and RSS.
;; It requires Emacs 24.3 and is available for download from MELPA or el-get.
;; Elfeed was inspired by notmuch.
;;
;; SITE    : https://github.com/skeeto/elfeed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package elfeed
  :ensure t
  :config
  (global-set-key (kbd "C-x w") 'elfeed)
  (setq elfeed-feeds
        '("https://news.google.com/rss?hl=ko&gl=KR&ceid=KR:ko"))
  )
