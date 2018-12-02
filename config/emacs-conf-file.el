;(setq find-program "d:\\tools\\cygwin64\\bin\\find.exe")
;(setq grep-program "d:\\tools\\cygwin64\\bin\\grep.exe")

(setq large-file-warning-threshold 104857600) ; 파일 사이즈 제한 (100MB)

;;(defvar backup-directory "~/.backup")

;;(if (not (file-exists-p backup-directory))
;;    (make-directory backup-directory t))


;; 백업 파일 생성 여부
(setq make-backup-file nil
      backup-directory-alist '((".*" . "~/.backup")) ; 백업 파일 저장 경로
      backup-by-copying  t                                ; 백업 디렉토리에 현재 파일을 복사
      version-control    t                                ; 백업 파일에 대한 버전 번호
      delete-old-version t                                ; 필요하지 않은 버전 삭제
      kept-old-versions  5                                ; 백업 유지 버전 (구)
      kept-new-versions  5                                ; 백업 유지 버전 (신규)
      )

;; 버퍼 자동 저장
(setq auto-save-default nil
      auto-save-timeout  20                               ; 자동 저장 전 유휴시간(초)
      auto-save-interval 200                              ; 자동 저장 사이에 keystrokes의 수
      )

(init-function "file")
(init-package "recentf-ext")
(init-package "vlf")
(init-package "savehist")
(init-package "treemacs")

(global-set-key (kbd "C-c r") 'rename-file-and-buffer)
(global-set-key (kbd "C-c D") 'delete-file-and-buffer)
(global-set-key (kbd "C-c b") 'switch-to-previous-buffer)

;; 변경된 파일 내용 자동 반영
(global-auto-revert-mode)

(defalias 'list-buffers 'ibuffer)

;; 항상 다른 윈도우에 ibuffer 표시
(setq ibuffer-use-other-window t)

(defalias 'list-buffers 'ibuffer)

;; 항상 다른 윈도우에 ibuffer 표시
(setq ibuffer-use-other-window t)

;;(setq dired-dwim-target           t      ; 다른 dired buffer가 다른 윈도우에 표시되고 있다면 rename / copy를 위한 타켓으로 그 디렉토리를 사용
;;      dired-recursive-copies      'alway ;
;;      dired-recursive-deletes     'top   ;
;;      setq dired-listing-switches "-lha" ;
;;      )


;; 변경이 있을 때 dired 버퍼를 자동 새로 고침
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; 윈도우가 아니면 다음 목록으로 전환해서 사용
(when (not (eq system-type 'windows-nt))
  (setq dired-listing-switches "-lha --group-directories-first"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Files > Recentf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(recentf-mode 1)

;; Recently Visited Files
(setq recentf-max-saved-items 200)
(setq recentf-max-menu-items 15)

;; recentf id로 찾기
(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-c f") 'recentf-ido-find-file)
