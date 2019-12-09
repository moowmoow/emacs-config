
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
(setq browse-url-browser-function 'xwidget-webkit-browse-url)


