;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : swiper
;;
;; GROUP   : Editing > Matching > Swiper
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package swiper
  :ensure t
  :config
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "C-r") 'swiper-all))
