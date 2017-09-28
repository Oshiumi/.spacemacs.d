;; key bindings
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)
(global-set-key (kbd "C-h") 'delete-backward-char)
(define-key term-raw-map (kbd "C-h") 'term-send-backspace)
(global-unset-key "\C-j")
