;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : origami
;;
;; A text folding minor mode for Emacs.
;;
;; To some degree, yes. Currently out of the box support is provided for:
;; - C
;; - C++
;; - Clojure
;; - Go
;; - Java
;; - Javascript
;; - PHP
;; - Perl
;; - Python
;; - elisp
;;
;; SITE    : https://github.com/gregsexton/origami.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package origami
  :ensure t
  :custom
  (origami-show-fold-header t)
  :custom-face
  (origami-fold-replacement-face ((t (:inherit magit-diff-context-highlight))))
  (origami-fold-fringe-face ((t (:inherit magit-diff-context-highlight))))
  :init
  (defhydra origami-hydra (:color blue :hint none)
    "
      _:_: recursively toggle node       _a_: toggle all nodes    _t_: toggle node
      _o_: show only current node        _u_: undo                _r_: redo
      _R_: reset
      "
    (":" origami-recursively-toggle-node)
    ("a" origami-toggle-all-nodes)
    ("t" origami-toggle-node)
    ("o" origami-show-only-node)
    ("u" origami-undo)
    ("r" origami-redo)
    ("R" origami-reset)
    )
  :bind
  (:map origami-mode-map ("C-M-:" . origami-hydra/body))
  :config
  (face-spec-reset-face 'origami-fold-header-face)
  )
