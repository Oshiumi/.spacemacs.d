;; key bindings
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)
(global-unset-key "\C-j")
(keyboard-translate ?\C-h ?\C-?)

(define-key term-raw-map (kbd "C-j") nil)
(define-key term-raw-map (kbd "C-p") 'term-send-up)
(define-key term-raw-map (kbd "C-n") 'term-send-down)
