(use-package php-mode
  :ensure t)

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
