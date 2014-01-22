(setq load-path (cons "~/.emacs.d/lisp" load-path))

;; 设置color-themes
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'color-theme)
(color-theme-initialize)
(color-theme-matrix)
(color-theme-sitaramv-nt)
