;; org
(setq org-todo-keywords
      '((sequence "TODO(t)" "WIP(w)" "|" "DONE(d)" "SOMEDAY(s)")))
(setq org-hide-leading-stars t)
(setq org-src-lang-modes '())
(defun show-org-buffer (file)
  "Show an org-file FILE on the current buffer."
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/org/" file))))
(spacemacs/set-leader-keys
  "bo" '(lambda () (interactive)
           (show-org-buffer "notes.org")))

(setq org-agenda-files '("~/org"))
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
(setq org-capture-templates
      '(("n" "Note" entry (file+headline "~/org/notes.org" "Notes")
         "* %?\nEntered on %U\n %i\n %a")
        ("t" "Task" entry (file+headline "~/org/notes.org" "Tasks")
         "* TODO %?\nEntered on %U\n %i\n %a")))
