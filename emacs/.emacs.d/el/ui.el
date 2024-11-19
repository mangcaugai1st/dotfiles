;; Hide tool bar 
(tool-bar-mode 0)

;; Hide scroll bar 
(scroll-bar-mode 0)

;; Hide menu bar 
(menu-bar-mode 0)

;; Hide welcome screen in Emacs 
(setq inhibit-startup-screen nil)

;; Display the current line and column number 
(setq column-number-mode t)

;; Display the line numbers 
(global-display-line-numbers-mode)

;; Enable tab bar 
(global-tab-line-mode t)

;; Set default font and font size
;;(add-to-list 'default-frame-alist '(font . "NotoMono NF-15"))
(set-face-attribute 'default nil :font "NotoMono NF-15" )

;; Load Timu-MacOS theme 
(load-theme 'timu-macos t)
