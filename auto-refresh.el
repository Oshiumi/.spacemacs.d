(setq auto-revert-check-vc-info t)

(setq auto-revert-interval 1)

;; (add-hook 'find-file-hook
;;           '(lambda ()
;;              (when
;;                  (and buffer-file-name
;;                       (vc-backend buffer-file-name))
;;                (auto-revert-mode))))

