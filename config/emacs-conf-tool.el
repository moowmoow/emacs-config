
(init-package "restclient")
(init-package "company-restclient")
(init-package "ob-restclient")
(init-package "google-this")
(init-package "google-translate")
(init-package "plantuml-mode")
(init-package "elfeed")
(init-package "elfeed-web")
(init-package "elnode")

;; (setq browse-url-browser-function 'eww-browse-url)
;; (setq browse-url-browser-function (lambda (url session)
;;                                     ;; (other-windows 1)
;;                                     (xwidget-webkit-browse-url)
;;                                     ))
;;(setq browse-url-browser-function 'xwidget-webkit-browse-url)

;;(setq browse-url-browser-function 'browse-url-firefox
;;browse-url-new-window-flag t
;;browse-url-firefox-new-window-is-tab t)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "web-browser")
(setq browse-url-browser-function 'my-browse)

(defun my-browse (url &rest ignore)
  "Browse URL using Chrome."
  (interactive "sURL: ")
  ;;(shell-command (concat "w3m " url))
  (shell-command (concat "chrome.exe " url))
  ;;(pop-to-buffer "*Shell Command Output*")
  (setq truncate-lines t))
