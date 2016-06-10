(setq auto-mode-alist (cons '("\\.yaml$" . yaml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml$"  . yaml-mode) auto-mode-alist))

(setq auto-mode-alist (cons '("\\.jinja$"   . jinja2-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.jinja2$"  . jinja2-mode) auto-mode-alist))

(require 'go-mode-autoloads)

(require 'protobuf-mode)
(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))  

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

;(require 'json-mode)
;(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))  

; after https://github.com/Sterlingg/json-snatcher/blob/master/README.md
;(defun js-mode-bindings ()
;"Sets a hotkey for using the json-snatcher plugin"
;(when (string-match  "\\.json$" (buffer-name))
;  (local-set-key (kbd "C-c C-g") 'jsons-print-path)))
;(add-hook 'js-mode-hook 'js-mode-bindings)
;(add-hook 'js2-mode-hook 'js-mode-bindings)