(use-package org-roam
  :ensure t
  :bind (("C-c n f" . org-roam-node-find)
         ("C-c n c" . org-roam-capture)
         ("C-c n s" . org-roam-db-sync)
         (:map org-mode-map
               (("C-c n i" . org-roam-node-insert)
                ("C-c n o" . org-id-get-create)
                ("C-c n t" . org-roam-tag-add)
                ("C-c n a" . org-roam-alias-add)
                ("C-c n d c t" . org-roam-dailies-capture-today)
                ("C-c n d c d" . org-roam-dailies-capture-date)
                ("C-c n d g" . org-roam-dailies-goto-date)
                ("C-c n d t" . org-roam-dailies-goto-today)
                ("C-c n d w" . org-roam-dailies-goto-tomorrow)
                ("C-c n d y" . org-roam-dailies-goto-yesterday)
                ("C-c n l" . org-roam-buffer-toggle)
                ("C-c n L" . org-toggle-link-display)))))
:custom
;;(setq org-roam-directory "/mnt/d/Dropbox/document/org-roam")
:config
(org-roam-db-autosync-enable)
(org-roam-db-autosync-mode)
(setq org-roam-completion-everywhere nil)
(setq org-roam-complete-link-at-point t)
;;(setq org-roam-completion-everywhere nil)
                                        ;org-roam-graph-exclude-matcher '("private" "repeaters" "dailies")
                                        ;org-roam-node-display-template "${doom-hierarchy:*} ${tags:45}")

(setq org-roam-capture-templates '(
                                   ("y" "Empty" plain "%?"
                                    :target (file+head "1_project/inbox/${slug}.org"
                                                       "#+title: ${title}\n")
                                    :unnarrowed t)

                                   ;;("d" "Default" plain "%?"
                                   ;;:target (file+head "1_project/inbox/%<%Y%m%d%H%M%S>_${slug}.org"
                                   ;;"#+title: ${title}\n")
                                   ;;:unnarrowed t)

                                   ("d" "Dashboard" plain "%?"
                                    :target (file+head "1_project/inbox/dashboard_${slug}.org"
                                                       "#+title: <DASHBOARD> ${title}\n")
                                    :unnarrowed t)

                                   ("l" "Backlog" plain "%?"
                                    :target (file+head "1_project/inbox/backlog_${slug}.org"
                                                       "#+title: <BACKLOG> ${title}\n")
                                    :unnarrowed t)

                                   ("m" "Agile - Theme" plain "%?"
                                    :target (file+head "1_project/inbox/theme_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <THEME-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("i" "Agile - Initiative" plain "%?"
                                    :target (file+head "1_project/inbox/initiative_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <INITIATIVE-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("e" "Agile - Epic" plain "%?"
                                    :target (file+head "1_project/inbox/epic_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <EPIC-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("s" "Agile - Story" plain "%?"
                                    :target (file+head "1_project/inbox/story_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <STORY-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("t" "Agile - Task" plain "%?"
                                    :target (file+head "1_project/inbox/task_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <TASK-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("a" "Article" plain "%?"
                                    :target (file+head "1_project/inbox/article_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <ARTICLE-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("f" "Feature" plain "%?"
                                    :target (file+head "1_project/inbox/feature_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <FEATURE-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("h" "Research" plain "%?"
                                    :target (file+head "1_project/inbox/research_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <RESEARCH-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("v" "Improvement" plain "%?"
                                    :target (file+head "1_project/inbox/improvement_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <IMPROVEMENT-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("b" "Bug" plain "%?"
                                    :target (file+head "1_project/inbox/bug_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <BUG-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("p" "Support" plain "%?"
                                    :target (file+head "1_project/inbox/support_%<%y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <SUPPORT-%<%y%m%d%H%M%S>> ${title}")
                                    :unnarrowed t)

                                   ("c" "concept" plain "%?"
                                    :target (file+head "1_project/inbox/concept_%<%Y%m%d%H%M%S>_${slug}.org"
                                                       "#+title: <CONCEPT> ${title}\n")
                                    :unnarrowed t)

                                   ("w" "wiki" plain "%?"
                                    :target (file+head "4_archive/wiki/wiki_${slug}.org"
                                                       "#+title: <WIKI> ${title}\n")
                                    :unnarrowed t)))

(setq org-roam-dailies-directory "/mnt/d/document/org-roam/1_project/daily/")

(setq org-roam-dailies-capture-templates
      '(
        ("d" "default" entry
         "* %?"
         :target (file+head "%<%Y-%m-%d>.org"
                            "#+title: %<%Y-%m-%d>\n"))))

(org-roam-setup)
