(add-hook 'term-mode-hook '(lambda ()
                             (define-key term-raw-map (kbd "C-j") nil)
                             (define-key term-raw-map (kbd "C-p") 'term-send-up)
                             (define-key term-raw-map (kbd "C-n") 'term-send-down)))
