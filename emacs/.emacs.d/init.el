(add-to-list 'load-path "~/.emacs.d/el")

(load "ui")
(load "settings")
(load "OrgMode")
(load "packages")

(require 'org-bullets)

;; (setq x-select-enable-clipboard t)

;; 
;; (setq org-startup-folder nil)

;; Example for theme local path  
;; (add-to-list 'load-path "C:/Users/<user_name>/AppData/Roaming/.emacs.d/theme")
;; (require 'timu-macos-theme)
;; (load-theme 'timu-macos t)

;; (setq-default c-basic-offset 4)
;; (setq-default tab-width 4)
;; (setq-default indent-tabs-mode nil)


