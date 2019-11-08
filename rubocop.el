;; (require 'rubocop)
;; (setq rubocop-check-command "bundle exec rubocop --format emacs")
;; (defun rubocop-ensure-installed () )

(setq flycheck-command-wrapper-function
      (lambda (command)
        (append '("bundle" "exec") command)))
