(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

(package-initialize)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(setq emacs-home (getenv "EMACS_HOME"))
(setq emacs-base (getenv "EMACS_BASE"))

(defun init-config (path)
  (load (concat emacs-home "/init/config/emacs-conf-" path ".el")))

(defun init-package (path)
  (load (concat emacs-home "/init/packages/emacs-pkg-" path ".el")))

(defun init-function (path)
  (load (concat emacs-home "/init/functions/emacs-func-" path ".el")))

(defun init-theme (path)
  (load (concat emacs-home "/init/themes/emacs-theme-" path ".el")))

;; 환경 초기화
(init-config "system")
(init-config "interface")
(init-config "file")
(init-config "tool")
(init-config "face")
(init-config "project")
(init-config "term")
(init-config "vc")
(init-config "text")
(init-config "prog")
(init-config "edit")
(init-config "help")

;; 사이트별 환경 설정
