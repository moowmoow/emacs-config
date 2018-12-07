
(init-package "el-get")
(init-package "disable-mouse")
(init-package "symon")

(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-file-name-coding-system 'cp949-dos)

;;(set-language-environment "Korean")
(setq default-input-method "korean-hangul390")
(setq default-korean-keyboard "390")

;; input 메서드 변경 단축키 설정
(global-set-key (kbd "<Hangul>") 'toggle-input-method)
(global-set-key (kbd "<kana>") 'toggle-input-method)
(global-set-key (kbd "<S-kana>") 'toggle-input-method)
(global-set-key (kbd "S-SPC") 'toggle-input-method)
(global-set-key (kbd "C-S-SPC") 'toggle-input-method)
;;(set-language-environment "Korean")
(setq default-input-method "korean-hangul390")
(setq default-korean-keyboard "390")

;; input 메서드 변경 단축키 설정
(global-set-key (kbd "<Hangul>") 'toggle-input-method)
(global-set-key (kbd "<kana>") 'toggle-input-method)
(global-set-key (kbd "<S-kana>") 'toggle-input-method)
(global-set-key (kbd "S-SPC") 'toggle-input-method)
(global-set-key (kbd "C-S-SPC") 'toggle-input-method)
