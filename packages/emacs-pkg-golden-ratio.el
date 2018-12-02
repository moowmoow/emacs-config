;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : golden-ratio
;; 
;; GROUP: Environment > Windows > Golden Ratio
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package golden-ratio
  :ensure t
  :config
  ;; (require 'golden-ratio)
  (add-to-list 'golden-ratio-exclude-modes "ediff-mode")
  (add-to-list 'golden-ratio-exclude-modes "helm-mode")
  (add-to-list 'golden-ratio-exclude-modes "dired-mode")
  (add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)

  (defun pl/helm-alive-p ()
    (if (boundp 'helm-alive-p)
        (symbol-value 'helm-alive-p)))

  ;;   golden-raio  .
  (setq golden-ratio-exclude-modes '("ediff-mode"
                                     "gud-mode"
                                     "gdb-locals-mode"
                                     "gdb-registers-mode"
                                     "gdb-breakpoints-mode"
                                     "gdb-threads-mode"
                                     "gdb-frames-mode"
                                     "gdb-inferior-io-mode"
                                     "gud-mode"
                                     "gdb-inferior-io-mode"
                                     "gdb-disassembly-mode"
                                     "gdb-memory-mode"
                                     "magit-log-mode"
                                     "magit-reflog-mode"
                                     "magit-status-mode"
                                     "IELM"
                                     "eshell-mode" "dired-mode"))

  (golden-ratio-mode))
