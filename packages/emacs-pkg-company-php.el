(use-package company-php
  :ensure t
  :config
  (add-hook 'php-mode-hook
            '(lambda ()
               (require 'company-php)
               (company-mode t)
               (make-local-variable 'company-backends)
               (add-to-list 'company-backends 'company-ac-php-backend)))
  )
