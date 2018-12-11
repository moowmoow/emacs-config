(use-package ejc-sql
  :ensure t
  :config
  (add-hook 'ejc-sql-hook
            (lambda()
              ;; (setq cider-lein-parameters "repl :headless :host localhost")
              (ejc-set-rows-limit 1000)))
  )
