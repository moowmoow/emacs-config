
(init-theme "paganini")
(init-package "highlight-numbers")
(init-package "highlight-symbol")
(init-package "rainbow-mode")
(init-package "rainbow-blocks")
(init-package "rainbow-identifiers")
(init-package "rainbow-delimiters")
                                        ;(init-package "beacon")
(init-package "nyan-mode")
(init-package "volatile-highlights")
(init-package "dimmer")
(init-package "focus")
(init-package "linum-relative")
(init-package "yascroll")
(init-package "doom-modeline")

;; 바 삭제
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; 커서 깜박임 삭제
(blink-cursor-mode -1)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(column-number-mode t)

(add-to-list 'default-frame-alist '(height . 60))
(add-to-list 'default-frame-alist '(width . 200))
(set-frame-position (selected-frame) 80 20)

;; 프레임 타이틀을 경로로 표시
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; font setting
;; (set-face-font 'default "Bitstream Vera Sans Mono")
;; (set-face-attribute 'default nil :height 115)
;; (set-fontset-font t 'hangul (font-spec :name "NanumGothicCoding" :size 20))

;;(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 130)
(set-face-attribute 'default nil :family "Bitstream Vera Sans Mono" :height 115)
(set-fontset-font nil 'hangul (font-spec :family "D2Coding" :pixelsize 14))
(setq face-font-rescale-alist '(("D2Coding" . 1.2)))
;;(setq-default line-spacing 6)


(add-hook 'prog-mode-hook 'goto-address-mode)
(add-hook 'text-mode-hook 'goto-address-mode)

;; (defun x-led-mask ()
;;   "Get the current status of the LED mask from X."
;;   (with-temp-buffer
;;     (call-process "xset" nil t nil "q")
;;     (let ((led-mask-string
;;            (->> (buffer-string)
;;                 s-lines
;;                 (--first (s-contains? "LED mask" it))
;;                 s-split-words
;;                 -last-item)))
;;       (string-to-number led-mask-string 16))))

;; (defun caps-lock-on (led-mask)
;;   "Return non-nil if caps lock is on."
;;   (eq (logand led-mask 1) 1))

;; (define-minor-mode caps-lock-show-mode
;;   "Display whether caps lock is on."
;;   :global t
;;   :lighter (:eval (if (caps-lock-on (x-led-mask)) " CAPS-LOCK" "")))

;; 투명창
(when window-system
  (set-frame-parameter (selected-frame) 'alpha (list 90 90))
  (add-to-list 'default-frame-alist '(alpha ,90)))

;;(when (display-graphic-p)
;;  (require 'all-the-icons))
;; or
(use-package all-the-icons
  :ensure t
  )
;;:if (display-graphic-p))
