(tool-bar-mode -1)
(scroll-bar-mode -1)


;; (add-to-list 'load-path "C:/Users/mangc/AppData/Roaming/.emacs.d/theme")
;; (require 'timu-macos-theme)
;; (load-theme 'timu-macos t)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Download Evil
(unless (package-installed-p 'timu-rouge-theme)
  (package-install 'timu-rouge-theme))

(load-theme 'timu-rouge t)


