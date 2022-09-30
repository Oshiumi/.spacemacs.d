(setq flycheck-command-wrapper-function
      (lambda (command)
        (append '("bundle" "exec") command)))
