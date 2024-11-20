(set-language-environment "UTF-8")

;; Maximize screen on startup
;; (add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Do not create backup files (the files end with ~ symbol) 
;; (setq make-backup-file nil)

;; Disable Backup 
(setq backup-inhibited t)
;; Disable AutoSave (Do not create files with the form #file#)
(setq auto-save-default nil)

;; Enable Evil
(require 'evil)
(evil-mode 1)


