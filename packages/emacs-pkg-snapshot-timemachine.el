;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE : snapshot-timemachine
;;
;; Snapshot-timemachine provides a polished interface to step through the snapshots
;; of a file made by a third-party snapshot or backup facility, e.g. Btrfs, ZFS, etc.
;;
;; SITE    : https://github.com/mrBliss/snapshot-timemachine
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package snapshot-timemachine
  :ensure t
  :init

  ;; Default Backup directory
  (defvar backup-directory "~/.emacs.d/backups/")
  (setq backup-directory-alist `((".*" . ,backup-directory)))

  (when (not (file-exists-p backup-directory))
    (make-directory backup-directory t))

  ;; Auto-save
  (defvar auto-save-directory "~/.emacs.d/auto-save/")
  (setq auto-save-file-name-transforms `((".*" ,auto-save-directory t)))

  (when (not (file-exists-p auto-save-directory))
    (make-directory auto-save-directory t))

  ;; Tramp backup
  (defvar tramp-backup-directory "~/.emacs.d/tramp-backups/")
  (setq tramp-backup-directory-alist `((".*" . ,tramp-backup-directory)))

  (when (not (file-exists-p tramp-backup-directory))
    (make-directory tramp-backup-directory t))

  (setq make-backup-files t               ; backup of a file the first time it is saved.
        backup-by-copying t               ; don't clobber symlinks
        version-control t                 ; version numbers for backup files
        delete-old-versions t             ; delete excess backup files silently
        delete-by-moving-to-trash t
        kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
        kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
        auto-save-default t               ; auto-save every buffer that visits a file
        auto-save-timeout 20              ; number of seconds idle time before auto-save (default: 30)
        auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
        )

  :config

  (defun snapshot-timemachine-backup-finder (file)
    "Find snapshots of FILE in rsnapshot backups."
    (let* ((file (expand-file-name file))
           (file-adapted (replace-regexp-in-string "/" "!" file))
           (backup-files(directory-files backup-directory t (format "%s.*" file-adapted))))
      (seq-map-indexed (lambda (backup-file index)
                         (make-snapshot :id index
                                        :name (format "%d" index)
                                        :file backup-file
                                        :date (nth 5 (file-attributes backup-file))))
                       backup-files)))

  (setq snapshot-timemachine-snapshot-finder #'snapshot-timemachine-backup-finder))
