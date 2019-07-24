(defun search-dict(word)
    "Search Dictionary.app is macOS."
    (interactive "MSearch word: ")
    (let
        ((url (concat "dict://" word)))
      (browse-url url)))

(spacemacs/set-leader-keys
  "sw" 'search-dict)


