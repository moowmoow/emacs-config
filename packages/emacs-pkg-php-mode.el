
(add-hook 'php-mode-hook
          '(lambda ()
             (require 'company-php)
             (company-mode t)
             (ac-php-core-eldoc-setup) ;; enable eldoc
             (make-local-variable 'company-backends)
             (add-to-list 'company-backends 'company-ac-php-backend)))

;; (add-hook 'php-mode-hook
;;           '(lambda ()
;;              (auto-complete-mode t)
;;              (require 'ac-php)
;;              (setq ac-sources  '(ac-source-php ) )
;;              (yas-global-mode 1)

;;              (ac-php-core-eldoc-setup ) ;; enable eldoc
;;              (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
;;              (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back)    ;go back
;;              ))
