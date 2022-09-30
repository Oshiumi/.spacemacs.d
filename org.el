;; org
(require 'org-tempo)
(setq org-todo-keywords
      '((sequence "TODO(t)" "WIP(w)" "WAIT(a)" "REVIEW(r)" "|" "DONE(d)" "SOMEDAY(s)")))
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
         "* TODO %?\nEntered on %U\n %i\n %a")
        ("m" "Meeting" entry (file+headline "~/org/notes.org" "Meeting")
         "* %?\n** Why\n** What\n")))

(setq-default dotspacemacs-configuration-layers '(
                                                  (org :variables org-enable-github-support t)))


(setq org-use-speed-commands t)

(add-to-list 'org-speed-commands
             '("S" call-interactively 'org-schedule)
             '("d" call-interactively 'org-deadline)
             )


;; (defun github-task-from-yank ()
;;   github-task((yank))
;;   )

;; (defun github-task (text)
;;   (if (string-match "github" text)
;;     )
;;   )

;; (defun gh-url-type (url)
;;   (if (string-match "pull" 'url)
;;       "pull"
;;     (if (string-match "issue" 'url)
;;         "issue"
;;       (error "Unknown url")
;;       )
;;       )
;;   )

;; (defun gh-view (url)
;;   (interactive)
;;   (shell-command-to-string
;;    (mapconcat #'shell-quote-argument
;;               (list "gh" (gh-url-type url) "view" url)
;;               " ")))

;; (yank)
;; (gh-view (yank))
;; (gh-url-type )
;; (yank-pop)

;; (car kill-ring)
;; (let ((url (car kill-ring)))
;;   )
