(use-package paganini-theme
  :ensure t
  :config
  (load-theme 'paganini t)

                                        ;(setq frame-background-mode 'dark)

  (eval-after-load 'ansi-color
    '(progn
       (setq ansi-color-names-vector
             ["black" "tomato" "chartreuse1" "gold1"
              "DodgerBlue3" "MediumOrchid1" "cyan" "white"])
       (setq ansi-color-map (ansi-color-make-color-map))))

  ;; To make colors in term mode derive emacs' ansi color map
  (eval-after-load 'term
    '(let ((term-face-vector [term-color-black
                              term-color-red
                              term-color-green
                              term-color-yellow
                              term-color-blue
                              term-color-magenta
                              term-color-cyan
                              term-color-white]))
       (require 'ansi-color)
       (dotimes (index (length term-face-vector))
         (let ((fg (cdr (aref ansi-color-map (+ index 30))))
               (bg (cdr (aref ansi-color-map (+ index 40)))))
           (set-face-attribute (aref term-face-vector index) nil
                               :foreground fg
                               :background bg)))))

;;(setq ansi-term-color-vector [term term-color-black term-color-red term-color-green term-color-yellow term-color-blue term-color-magenta term-color-cyan term-color-white])

  (custom-theme-set-faces
   'paganini

   ;; org-table setting
   `(org-table ((t (:foreground "#eee" :background "#222"))))

   ;; org-block setting
   `(org-block ((t (:foreground "#eee" :background "#222"))))
   `(org-block-background ((t (:foreground "#000000" :background "#000000"))))
   `(org-block-begin-line ((t (:foreground "#000000" :background "#444" :bold t))))
   ;; `(org-block-begin-line ((t (:foreground "#000000" :background "#daa520" :bold t))))
   `(org-block-end-line ((t (:foreground "#000000" :background "#333" :bold t))))

   ;; Flycheck
   `(flycheck-error ((t (:background "#dd0000" :foreground "#eeeeee" :bold t :underline t))))
   `(flycheck-warnline ((t (:background "#ff8700" :foreground "#eeeeee" :bold t :underline t))))
   )

  (eval-after-load 'org
    '(progn
       (set-face-attribute 'org-level-1 nil :foreground "#ffd700" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-2 nil :foreground "#ff8c00" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-3 nil :foreground "#adff2f" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-4 nil :foreground "#00ff00" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-5 nil :foreground "#228b22" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-6 nil :foreground "#7fffd4" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-7 nil :foreground "#00ffff" :background nil :bold t :height 1.0)
       (set-face-attribute 'org-level-8 nil :foreground "#00ced1" :background nil :bold t :height 1.0))))
