(set-language-environment "UTF-8")
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
;; Set default font and font size
(add-to-list 'default-frame-alist '(font . "NotoMono NF-15"))
;; Break lines automatically 
(add-hook 'text-mode-hook 'turn-on-auto-fill)




;; Elisp files 
;; (add-to-list 'load-path (concat user-emacs-direction ""))



;; Example for theme local path  
;; (add-to-list 'load-path "C:/Users/<user_name>/AppData/Roaming/.emacs.d/theme")
;; (require 'timu-macos-theme)
;; (load-theme 'timu-macos t)



;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (package-initialize)
;; (package-refresh-contents)


;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))


;; Enable Evil
(require 'evil)
(evil-mode 1)


;; Download Timu-Rouge theme
(unless (package-installed-p 'timu-rouge-theme)
  (package-install 'timu-rouge-theme))


;; Load Timu-Rouge theme 
(load-theme 'timu-rouge t)


;; Custom headline in orgmode
(defun my/org-mode-custom-headline ()
  (font-lock-add-keywords
   nil
   '(("^\\(\\*+\\) " (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "●")))))))

(add-hook 'org-mode-hook 'my/org-mode-custom-headline)



