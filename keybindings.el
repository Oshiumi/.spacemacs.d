;; key bindings
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)
(global-unset-key "\C-j")
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-H" 'backward-kill-word)
(spacemacs/set-leader-keys
  "o" 'evil-avy-goto-char-2
  "b t" 'multi-term)
