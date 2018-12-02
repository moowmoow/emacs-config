;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : duplicate-thing
;;
;; SITE    : https://github.com/ongaeshi/duplicate-thing
;;
;; duplicate-thing.el is Emacs lisp. Easy duplicate line or region, with comment out.
;;
;; 1. Duplicate current line.
;; 2. Duplicate a selection when selection is active.
;; 3. Only C-u, replicate, comment out the range.
;; 4. Numerical prefix is specified as 'C-u 5': do multiple times repeatedly.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package duplicate-thing
  :ensure t
  :config
  (global-set-key (kbd "C-S-c") 'duplicate-thing))
