;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives  
;;             '("gnu" . "https://elpa.gnu.org/packages/"))
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; (package-refresh-contents)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Sidebar
(use-package neotree
  :ensure t
  :bind ([f8] . neotree-toggle))
  ;; :bind ("<C-return>" . neotree-toggle))

;; Download Evil
(use-package evil
  :ensure t
  :init 
  :config
  (evil-mode)
)
;; Download Timu-MacOS theme
(use-package timu-macos-theme
  :ensure t
  :config
  (load-theme 'timu-macos t))
