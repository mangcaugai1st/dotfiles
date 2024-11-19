;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives  
             '("gnu" . "https://elpa.gnu.org/packages/"))
             '("melpa" . "https://melpa.org/packages/")
(package-initialize)
;; (package-refresh-contents)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure LSP mode for C/C++
(use-package lsp-mode
  :ensure t
  :hook ((c-mode c++-mode) . lsp)
  :commands lsp)

;; Sidebar
(use-package neotree
  :ensure t
  :bind ([f8] . neotree-toggle))

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;;  Download Timu-Rouge theme
;;  (unless (package-installed-p 'timu-rouge-theme)
;;    (package-install 'timu-rouge-theme))
;;  Load Timu-Rouge theme 
;;  (load-theme 'timu-rouge t)

;; Download Timu-MacOS theme
(unless (package-installed-p 'timu-macos-theme)
  (package-install 'timu-macos-theme))

;; Auto-complete
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

;; Debugger
(use-package dap-mode
  :ensure t
  :config 
  (dap-mode 1)
  (dap-ui-mode 1))


