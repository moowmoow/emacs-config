;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : company-restclient
;;
;; GROUP   :
;; SITE    : https://github.com/iquiw/company-restclient
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package company-restclient
  :ensure t
  :config
  (require 'company-restclient)
  (add-to-list 'company-backends 'company-restclient))
