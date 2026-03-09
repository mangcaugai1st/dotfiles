;; Hide tool bar 
(tool-bar-mode 0)

;; Hide scroll bar 
(scroll-bar-mode 0)

;; Hide menu bar 
(menu-bar-mode 0)

;; Hide welcome screen in Emacs 
(setq inhibit-startup-screen t)

;; Display the current line and column number 
(setq column-number-mode t)

;; Display the line numbers 
(global-display-line-numbers-mode)

;; Enable tab bar 
;; (global-tab-line-mode t)

;; Set default font and font size
(add-to-list 'default-frame-alist
             '(font . "BlexMono Nerd Font Medium-13"))

(when (< 26 emacs-major-version)
  (tab-bar-mode 1)                              ;; enable tab bar
  (setq tab-bar-show 1)                         ;; hide bar if <= 1 tabs open
  (setq tab-bar-close-button-show t)            ;; show/hide tab close / X button
  (setq tab-bar-new-tab-choice "*dashboard*")   ;; buffer to show in new tabs
  (setq tab-bar-tab-hints nil)                  ;; show/hide tab numbers
  (setq tab-bar-format '(tab-bar-format-tabs tab-bar-separator)))
                                                ;; elements to include in bar

(set-language-environment "UTF-8")

;; Maximize screen on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Do not create backup files (the files end with ~ symbol) 
;; (setq make-backup-file nil)

;; Disable Backup 
(setq backup-inhibited t)

;; Disable AutoSave (Do not create files with the form #file#)
(setq auto-save-default nil)
