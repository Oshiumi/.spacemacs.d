(require 'auto-save-buffers-enhanced)

;;; 0.5秒後に保存
(setq auto-save-buffers-enhanced-interval 3)

;; undo-tree の wrote メッセージ
;; (defun my-undo-tree-save-history (undo-tree-save-history &rest args)
;;   (let ((message-log-max nil)
;;         (inhibit-message t))
;;     (apply undo-tree-save-history args)))

;; (advice-add 'undo-tree-save-history :around 'my-undo-tree-save-history)

;;; Wroteのメッセージを抑制
;;; !!!これを有効にするとauto-revertが効かなくなる!!!
;; (setq auto-save-buffers-enhanced-quiet-save-p t)

;;; *scratch*も ~/.emacs.d/private/scratch/scratch に自動保存
(setq auto-save-buffers-enhanced-save-scratch-buffer-to-file-p t)
(setq auto-save-buffers-enhanced-file-related-with-scratch-buffer
       (locate-user-emacs-file "~/scratch/scratch"))

(auto-save-buffers-enhanced t)

(defun commit-scratch ()
  (interactive)
  (shell-command "cd ~/scratch/ && git add scratch && git commit -m save"))

(add-hook 'kill-emacs-hook 'commit-scratch)
