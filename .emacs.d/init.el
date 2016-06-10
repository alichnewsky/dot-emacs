;; Author: Anthony Lichnewsky

;; VI style parenthesis/curly braket matching with % key...
;; this is evil for printfs but it generally works well
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "[([{]") (forward-sexp 1) (backward-char ))
        ((looking-at "[])}]") (forward-char ) (backward-sexp 1))
        (t (self-insert-command (or arg)))))


(global-set-key "%" 'match-paren)
;(global-set-key "^" 'match-curly)
;(setq minibuffer-max-depth nil)

(load "~/.emacs.d/load-directory")
(load "~/.emacs.d/config/cl-lib-0.5")
(load-directory "~/.emacs.d/config")


(load "~/.emacs.d/file-associations")