(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode)
  (setq default-input-method "japanese-skk")
  (require 'skk-study)
  ;; use skkserve
  (setq skk-server-host "localhost")
  (setq skk-server-portnum 1178)
  )
