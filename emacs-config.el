(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(setq package-check-signature nil)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(setq emacs-home (getenv "EMACS_HOME"))
;;(setq emacs-home "~/emacs")
(setq emacs-base (getenv "EMACS_BASE"))
(setq emacs-conf (getenv "EMACS_CONF"))
;;(setq emacs-conf "~/emacs/init")
;;(setq emacs-docs (getenv "EMACS_DOCS"))
(setq emacs-work (concat emacs-home "/work"))

(mapc 'load (directory-files-recursively (getenv "EMACS_PROP") ".\.el$"))

(defun init-config (path)
  (load (concat emacs-conf "/config/emacs-conf-" path ".el")))

(defun init-package (path)
  (load (concat emacs-conf "/packages/emacs-pkg-" path ".el")))

(defun init-function (path)
  (load (concat emacs-conf "/functions/emacs-func-" path ".el")))

(defun init-theme (path)
  (load (concat emacs-conf "/themes/emacs-theme-" path ".el")))

;; 환경 초기화
(init-config "global")
(init-config "system")
(init-config "edit")
(init-config "help")
(init-config "interface")
(init-config "navi")
(init-config "file")
(init-config "tool")
(init-config "face")
(init-config "project")
(init-config "term")
(init-config "text")
(init-config "prog")
(init-config "vc")

;; 사이트별 환경 설정
;;(mapc 'load (directory-files-recursively (concat emacs-home "/site") ".\.el$"))

;;(org-babel-load-file "./emacs-config.org")
