(require 'auto-save-buffers-enhanced)

;;; 0.5秒後に保存
(setq auto-save-buffers-enhanced-interval 0.5)

;;; Wroteのメッセージを抑制
;;; !!!これを有効にするとauto-revertが効かなくなる!!!
;;; (setq auto-save-buffers-enhanced-quiet-save-p t)

;;; *scratch*も ~/.emacs.d/scratch に自動保存
(setq auto-save-buffers-enhanced-save-scratch-buffer-to-file-p t)
(setq auto-save-buffers-enhanced-file-related-with-scratch-buffer
       (locate-user-emacs-file "scratch"))

(auto-save-buffers-enhanced t)
