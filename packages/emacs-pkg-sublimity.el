(use-package sublimity
  :ensure t
  :config
  (require 'sublimity)
  ;;(require 'sublimity-scroll)
  ;;(require 'sublimity-map)
  (sublimity-mode 1)
  (setq sublimity-scroll-weight 10
        sublimity-scroll-drift-length 5)
  ;;(setq sublimity-map-size 10)
  ;;(setq sublimity-map-fraction 0.3)
  ;;(setq sublimity-map-text-scale -7)
  )
