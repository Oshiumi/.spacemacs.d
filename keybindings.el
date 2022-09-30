;; key bindings
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)
(global-unset-key "\C-j")
(global-unset-key "\C-u")
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-H" 'backward-kill-word)
(global-set-key "\C-x\C-p" 'eval-print-last-sexp)
(spacemacs/set-leader-keys
  "o" 'evil-avy-goto-char-timer
  "b t" 'multi-term)
