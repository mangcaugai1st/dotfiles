;; Example for theme local path  
;; (add-to-list 'load-path "C:/Users/<user_name>/AppData/Roaming/.emacs.d/theme")
;; (require 'timu-macos-theme)
;; (load-theme 'timu-macos t)

; (add-to-list 'load-path "PATH/TO/PYTHON-MODE")
; (require 'python-mode)

; (add-to-list 'load-path "C:\Program Files\LLVM\bin\clangd.exe")
; (require 'clangd)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives  
    '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package evil
  :ensure t
  :init 
  :config
  (evil-mode))

(use-package catppuccin-theme
  :ensure t
  :config 
  (load-theme 'catppuccin :no-confirm)
  (setq catppuccin-flavor 'latte)
  (catppuccin-reload))
  
(use-package dashboard
  :ensure t
  :config 
  (dashboard-setup-startup-hook)
  :custom
  (dashboard-banner-logo-title "Konnichiwa, Nano desu.")
  (dashboard-center-content t)
  (dashboard-vertically-center-content t)
  (dashboard-startup-banner "~/.emacs.d/resources/nano.png")
)

;; NyanCat on Modeline as an analog indicator of your position in the buffer
(use-package nyan-mode
  :ensure t
  :config
  (nyan-mode 1)
  (setq nyan-animate-nyancat t))
