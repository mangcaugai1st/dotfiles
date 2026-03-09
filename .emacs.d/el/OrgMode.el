;; Hide the emphasis markup (e.g. /.../ for italics, *...* for bold, etc) 
(setq org-hide-emphasis-markers t)

;; Can use LaTeX-like syntax to insert special symbols like '\alpha', '\gamma'
(setq org-pretty-entities t)

;; Org indent mode #+STARTUP: indent
(add-hook 'org-mode-hook 'org-indent-mode)

;; Break lines automatically 
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Custom headline in orgmode

;;(defun my/org-mode-custom-headline ()
;;(font-lock-add-keywords
;;nil
;;'(("^\\(\\*+\\) " (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "●")))))))
;; '(("^\\(\\*+\\) " (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "")))))))

;; (add-hook 'org-mode-hook 'my/org-mode-custom-headline)

;; (font-lock-add-keywords 'org-mode
                        ;;'(("^ *\\([*]\\) "
                        ;;'(("^ *\\([-]\\) "
                        ;;'(("^\\(\\*+\\) "
                        ;;'(("^ *\\(\\*+\\) "
                        ;;'(("^ *\\([*]+\\) "
                          ;;(0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "●"))))))
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-bullets-bullet-list '("●" "○" "●" "○" "●" "○" "●"))


