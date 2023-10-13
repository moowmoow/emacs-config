(use-package org-roam
  :ensure t
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ("C-c n s" . org-roam-db-sync)
         ("C-c n d c t" . org-roam-dailies-capture-today)
         ("C-c n d c d" . org-roam-dailies-capture-date)
         ("C-c n d g" . org-roam-dailies-goto-date)
         ("C-c n d t" . org-roam-dailies-goto-today)
         ("C-c n d w" . org-roam-dailies-goto-tomorrow)
         ("C-c n d y" . org-roam-dailies-goto-yesterday)
         )
  :config
  (setq org-roam-directory "/mnt/d/Dropbox/document/org-roam")
                                        ;org-roam-graph-exclude-matcher '("private" "repeaters" "dailies")
                                        ;org-roam-node-display-template "${doom-hierarchy:*} ${tags:45}")
  (setq org-roam-capture-templates '(
                                     ("d" "default" plain "%?"
                                      :target (file+head "2_inbox/${slug}.org"
                                                         "#+title: ${title}\n")
                                        ;:target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                                        ;"#+title: ${title}\n")
                                      :unnarrowed t)

                                     ("c" "concept" plain "%?"
                                      :target (file+head "2_inbox/${slug}.org"
                                                         "#+title: ${title}\n")
                                      :unnarrowed t)

                                     ("w" "wiki" plain "%?"
                                      :target (file+head "7_wiki/${slug}.org"
                                                         "#+title: ${title}\n")
                                      :unnarrowed t)

                                     ("r" "ref" plain "%?" :target
                                      (file+head "2_inbox/${slug}.org"
                                                 "#+title: ${title}")
                                      :unnarrowed t)))
  (setq org-roam-dailies-directory "/mnt/d/document/org-roam/1_daily/")

  (setq org-roam-dailies-capture-templates
        '(
          ("d" "default" entry
           "* %?"
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n"))))

  (org-roam-db-autosync-enable)
  (org-roam-setup))
